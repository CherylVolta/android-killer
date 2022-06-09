.class public final Lcom/mtools/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/mtools/Printer;


# static fields
.field private static synthetic $SWITCH_TABLE$com$mtools$LogType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$mtools$LogType()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/mtools/Logger;->$SWITCH_TABLE$com$mtools$LogType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mtools/LogType;->values()[Lcom/mtools/LogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mtools/LogType;->Verbose:Lcom/mtools/LogType;

    invoke-virtual {v1}, Lcom/mtools/LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/mtools/Logger;->$SWITCH_TABLE$com$mtools$LogType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 7
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "stackTrace":Ljava/lang/String;
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "%s%s.%s%s"

    .line 128
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "callerClazzName":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    sget-object v4, Lcom/mtools/LogUtils;->configTagPrefix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, ""

    .line 131
    .local v0, "Prefix":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 132
    return-object v3

    .line 130
    .end local v0    # "Prefix":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/mtools/LogUtils;->configTagPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private logObject(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 28
    .param p1, "type"    # Lcom/mtools/LogType;
    .param p2, "element"    # Ljava/lang/StackTraceElement;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 55
    if-eqz p3, :cond_9

    .line 56
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    .line 57
    .local v20, "simpleName":Ljava/lang/String;
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/Throwable;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mtools/Logger;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v21

    .line 59
    .local v21, "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v7, p3

    .line 60
    check-cast v7, Ljava/lang/Exception;

    .line 61
    .local v7, "exception":Ljava/lang/Exception;
    invoke-static {}, Lcom/mtools/Logger;->$SWITCH_TABLE$com$mtools$LogType()[I

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/mtools/LogType;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 122
    .end local v7    # "exception":Ljava/lang/Exception;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v20    # "simpleName":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    .end local p3    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 64
    .restart local v7    # "exception":Ljava/lang/Exception;
    .restart local v16    # "msg":Ljava/lang/String;
    .restart local v20    # "simpleName":Ljava/lang/String;
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_0
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "qtfreet  "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v7    # "exception":Ljava/lang/Exception;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 71
    check-cast p3, Ljava/lang/String;

    .end local p3    # "object":Ljava/lang/Object;
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isArray()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 73
    const-string v16, "Temporarily not support more than two dimensional Array!"

    .line 74
    .restart local v16    # "msg":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/mtools/ArrayUtil;->getArrayDimension(Ljava/lang/Object;)I

    move-result v6

    .line 75
    .local v6, "dim":I
    packed-switch v6, :pswitch_data_1

    .line 90
    :goto_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-static/range {p3 .. p3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v17

    .line 78
    .local v17, "pair":Landroid/util/Pair;
    const-string v23, "[]"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "["

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] {\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 79
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 80
    goto :goto_1

    .line 82
    .end local v17    # "pair":Landroid/util/Pair;
    :pswitch_2
    invoke-static/range {p3 .. p3}, Lcom/mtools/ArrayUtil;->arrayToObject(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    .line 83
    .local v18, "pair1":Landroid/util/Pair;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/util/Pair;

    .line 84
    .local v19, "pair2":Landroid/util/Pair;
    const-string v23, "[][]"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "["

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] {\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 85
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 86
    goto/16 :goto_1

    .line 91
    .end local v6    # "dim":I
    .end local v16    # "msg":Ljava/lang/String;
    .end local v18    # "pair1":Landroid/util/Pair;
    .end local v19    # "pair2":Landroid/util/Pair;
    :cond_2
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v5, p3

    .line 92
    check-cast v5, Ljava/util/Collection;

    .line 93
    .local v5, "collection":Ljava/util/Collection;
    const-string v16, "%s size = %d [\n"

    .line 94
    .restart local v16    # "msg":Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    const/16 v24, 0x1

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 95
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3

    .line 96
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 97
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 98
    .local v8, "flag":I
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_4

    .line 105
    .end local v8    # "flag":I
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "\n]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    .restart local v8    # "flag":I
    .restart local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_4
    const-string v11, "[%d]:%s%s"

    .line 100
    .local v11, "itemString":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 101
    .local v10, "item":Ljava/lang/Object;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v23, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v25, v23

    const/16 v23, 0x1

    invoke-static {v10}, Lcom/mtools/SystemUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v23

    const/16 v26, 0x2

    .line 102
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "flag":I
    .local v9, "flag":I
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v8, v0, :cond_5

    const-string v23, ",\n"

    :goto_3
    aput-object v23, v25, v26

    .line 101
    move-object/from16 v0, v25

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move v8, v9

    .end local v9    # "flag":I
    .restart local v8    # "flag":I
    goto :goto_2

    .line 102
    .end local v8    # "flag":I
    .restart local v9    # "flag":I
    :cond_5
    const-string v23, "\n"

    goto :goto_3

    .line 106
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v9    # "flag":I
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "itemString":Ljava/lang/String;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v16    # "msg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 107
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " {\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "msg":Ljava/lang/String;
    move-object/from16 v15, p3

    .line 108
    check-cast v15, Ljava/util/Map;

    .line 109
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 110
    .local v14, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_7

    .line 115
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 111
    .local v13, "key":Ljava/lang/Object;
    const-string v11, "[%s -> %s]\n"

    .line 112
    .restart local v11    # "itemString":Ljava/lang/String;
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 113
    .local v22, "value":Ljava/lang/Object;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v13}, Lcom/mtools/SystemUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v22 .. v22}, Lcom/mtools/SystemUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 117
    .end local v11    # "itemString":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "msg":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/Object;
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/mtools/SystemUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 120
    .end local v20    # "simpleName":Ljava/lang/String;
    :cond_9
    invoke-static/range {p3 .. p3}, Lcom/mtools/SystemUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 75
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private varargs logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Lcom/mtools/LogType;
    .param p2, "element"    # Ljava/lang/StackTraceElement;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    sget-boolean v1, Lcom/mtools/LogUtils;->configAllowLog:Z

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0, p2}, Lcom/mtools/Logger;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "tag":Ljava/lang/String;
    array-length v1, p4

    if-lez v1, :cond_1

    .line 42
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 47
    :cond_1
    :goto_1
    invoke-static {}, Lcom/mtools/Logger;->$SWITCH_TABLE$com$mtools$LogType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/mtools/LogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qtfreet  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public json(Ljava/lang/StackTraceElement;Ljava/lang/String;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/StackTraceElement;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x4

    .line 148
    .local v0, "indent":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    const-string v4, "JSON{json is null}"

    invoke-virtual {p0, p1, v4}, Lcom/mtools/Logger;->v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    :try_start_0
    const-string v4, "{"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/mtools/Logger;->v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 157
    :cond_2
    const-string v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3    # "msg":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/mtools/Logger;->v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/StackTraceElement;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 142
    sget-object v0, Lcom/mtools/LogType;->Verbose:Lcom/mtools/LogType;

    invoke-direct {p0, v0, p1, p2}, Lcom/mtools/Logger;->logObject(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public varargs v(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/StackTraceElement;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 137
    sget-object v0, Lcom/mtools/LogType;->Verbose:Lcom/mtools/LogType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mtools/Logger;->logString(Lcom/mtools/LogType;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method
