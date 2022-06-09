.class public Lcom/mtools/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field private static final types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "java.lang.String"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "char"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 20
    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "double"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "byte"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/mtools/SystemUtil;->types:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTrace()Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 30
    const-string v7, "Object{object is null}"

    .line 59
    :goto_0
    return-object v7

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 35
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v9, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-lt v8, v9, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const-string v9, "}"

    invoke-virtual {v0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 35
    :cond_1
    aget-object v2, v3, v8

    .line 36
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "flag":Z
    sget-object v10, Lcom/mtools/SystemUtil;->types:[Ljava/lang/String;

    array-length v11, v10

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v11, :cond_3

    .line 53
    :goto_3
    if-nez v4, :cond_2

    .line 54
    const-string v7, "%s=%s, "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "Object"

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 38
    :cond_3
    aget-object v5, v10, v7

    .line 39
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v6, 0x0

    .line 43
    .local v6, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 47
    .end local v6    # "value":Ljava/lang/Object;
    :goto_4
    const-string v10, "%s=%s, "

    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    const/4 v12, 0x1

    .line 48
    if-nez v6, :cond_4

    const-string v7, "null"

    :goto_5
    aput-object v7, v11, v12

    .line 47
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 44
    .restart local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v6, v1

    .local v6, "value":Ljava/lang/IllegalAccessException;
    goto :goto_4

    .line 48
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "value":Ljava/lang/IllegalAccessException;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 38
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 59
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "flag":Z
    .end local v5    # "type":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "flag":Z
    .restart local v5    # "type":Ljava/lang/String;
    .local v6, "value":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    goto :goto_4
.end method
