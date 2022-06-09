import os  
  
class ParserError(Exception):  
    pass  
  
#   
def inject_code_to_method_section(method_section):  
    #   
    if method_section[0].find("static constructor") != -1:  
        return method_section  
    #   
    if method_section[0].find("synthetic") != -1:  
        return method_section  
    #   
    if method_section[0].find("abstract") != -1:  
        return method_section  
    #   
    inject_code = [  
        '\n',  
        '    invoke-static {}, Lcom/hook/testsmali/InjectLog;->PrintFunc()V\n',  
        '\n'  
    ]
    # 
    for i in range(0, len(method_section)):  
        if method_section[i].find(".prologue") != -1:  
            method_section[i + 1: i + 1] = inject_code
            return method_section
    #
    for ii in range(0, len(method_section)-1):
        if len(method_section[ii].strip())!= 0 and len(method_section[ii+1].strip()) == 0 :   
            method_section[ii + 1: ii + 1] = inject_code
            return method_section
    return method_section  
  
  
def inject_log_code(content):  
    new_content = []  
    method_section = []  
    is_method_begin = False  
    for line in content:  
        if line[:7] == ".method":  
            is_method_begin = True  
            method_section.append(line)  
            continue  
        if is_method_begin:  
            method_section.append(line)  
        else:  
            new_content.append(line)  
        if line[:11] == ".end method":  
            if not is_method_begin:  
                raise ParserError(".method error")  
            is_method_begin = False  
            new_method_section = inject_code_to_method_section(method_section)  
            new_content.extend(new_method_section)  
            method_section.clear()  
    return new_content  
  
  
def main():  
    walker = os.walk("./")  
    for root, directory, files in walker:  
        for file_name in files:  
            if file_name[-6:] != ".smali" or file_name[:5] == "Cocos":  
                continue  
            file_path = root + "/" + file_name  
            print(file_path)  
            file = open(file_path,'r',encoding='UTF-8')  
            lines = file.readlines()  
            file.close()  
            new_code = inject_log_code(lines)  
            file = open(file_path, "w")  
            file.writelines(new_code)  
            file.close()  
  
  
if __name__ == '__main__':  
    main()  
