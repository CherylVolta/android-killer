.class public final Lcom/mtools/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToObject(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 11
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "cross":I
    const/4 v6, 0x0

    .line 30
    .local v6, "vertical":I
    instance-of v8, p0, [[I

    if-eqz v8, :cond_3

    move-object v2, p0

    .line 31
    check-cast v2, [[I

    .line 32
    .local v2, "ints":[[I
    array-length v1, v2

    .line 33
    if-nez v1, :cond_1

    move v6, v7

    .line 34
    :goto_0
    array-length v8, v2

    :goto_1
    if-lt v7, v8, :cond_2

    .line 94
    .end local v2    # "ints":[[I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    .line 33
    .restart local v2    # "ints":[[I
    :cond_1
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_0

    .line 34
    :cond_2
    aget-object v3, v2, v7

    .line 35
    .local v3, "ints1":[I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 37
    .end local v2    # "ints":[[I
    .end local v3    # "ints1":[I
    :cond_3
    instance-of v8, p0, [[B

    if-eqz v8, :cond_5

    move-object v2, p0

    .line 38
    check-cast v2, [[B

    .line 39
    .local v2, "ints":[[B
    array-length v1, v2

    .line 40
    if-nez v1, :cond_4

    move v6, v7

    .line 41
    :goto_2
    array-length v8, v2

    :goto_3
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 42
    .local v3, "ints1":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 40
    .end local v3    # "ints1":[B
    :cond_4
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_2

    .line 44
    .end local v2    # "ints":[[B
    :cond_5
    instance-of v8, p0, [[S

    if-eqz v8, :cond_7

    move-object v2, p0

    .line 45
    check-cast v2, [[S

    .line 46
    .local v2, "ints":[[S
    array-length v1, v2

    .line 47
    if-nez v1, :cond_6

    move v6, v7

    .line 48
    :goto_4
    array-length v8, v2

    :goto_5
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 49
    .local v3, "ints1":[S
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 47
    .end local v3    # "ints1":[S
    :cond_6
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_4

    .line 51
    .end local v2    # "ints":[[S
    :cond_7
    instance-of v8, p0, [[J

    if-eqz v8, :cond_9

    move-object v2, p0

    .line 52
    check-cast v2, [[J

    .line 53
    .local v2, "ints":[[J
    array-length v1, v2

    .line 54
    if-nez v1, :cond_8

    move v6, v7

    .line 55
    :goto_6
    array-length v8, v2

    :goto_7
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 56
    .local v3, "ints1":[J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 54
    .end local v3    # "ints1":[J
    :cond_8
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_6

    .line 58
    .end local v2    # "ints":[[J
    :cond_9
    instance-of v8, p0, [[F

    if-eqz v8, :cond_b

    move-object v2, p0

    .line 59
    check-cast v2, [[F

    .line 60
    .local v2, "ints":[[F
    array-length v1, v2

    .line 61
    if-nez v1, :cond_a

    move v6, v7

    .line 62
    :goto_8
    array-length v8, v2

    :goto_9
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 63
    .local v3, "ints1":[F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 61
    .end local v3    # "ints1":[F
    :cond_a
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_8

    .line 65
    .end local v2    # "ints":[[F
    :cond_b
    instance-of v8, p0, [[D

    if-eqz v8, :cond_d

    move-object v2, p0

    .line 66
    check-cast v2, [[D

    .line 67
    .local v2, "ints":[[D
    array-length v1, v2

    .line 68
    if-nez v1, :cond_c

    move v6, v7

    .line 69
    :goto_a
    array-length v8, v2

    :goto_b
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 70
    .local v3, "ints1":[D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 68
    .end local v3    # "ints1":[D
    :cond_c
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_a

    .line 72
    .end local v2    # "ints":[[D
    :cond_d
    instance-of v8, p0, [[Z

    if-eqz v8, :cond_f

    move-object v2, p0

    .line 73
    check-cast v2, [[Z

    .line 74
    .local v2, "ints":[[Z
    array-length v1, v2

    .line 75
    if-nez v1, :cond_e

    move v6, v7

    .line 76
    :goto_c
    array-length v8, v2

    :goto_d
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 77
    .local v3, "ints1":[Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 75
    .end local v3    # "ints1":[Z
    :cond_e
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_c

    .line 79
    .end local v2    # "ints":[[Z
    :cond_f
    instance-of v8, p0, [[C

    if-eqz v8, :cond_11

    move-object v2, p0

    .line 80
    check-cast v2, [[C

    .line 81
    .local v2, "ints":[[C
    array-length v1, v2

    .line 82
    if-nez v1, :cond_10

    move v6, v7

    .line 83
    :goto_e
    array-length v8, v2

    :goto_f
    if-ge v7, v8, :cond_0

    aget-object v3, v2, v7

    .line 84
    .local v3, "ints1":[C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 82
    .end local v3    # "ints1":[C
    :cond_10
    aget-object v8, v2, v7

    array-length v6, v8

    goto :goto_e

    .end local v2    # "ints":[[C
    :cond_11
    move-object v4, p0

    .line 87
    check-cast v4, [[Ljava/lang/Object;

    .line 88
    .local v4, "objects":[[Ljava/lang/Object;
    array-length v1, v4

    .line 89
    if-nez v1, :cond_12

    move v6, v7

    .line 90
    :goto_10
    array-length v8, v4

    :goto_11
    if-ge v7, v8, :cond_0

    aget-object v5, v4, v7

    .line 91
    .local v5, "objects1":[Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/mtools/ArrayUtil;->arrayToString(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 89
    .end local v5    # "objects1":[Ljava/lang/Object;
    :cond_12
    aget-object v8, v4, v7

    array-length v6, v8

    goto :goto_10
.end method

.method public static arrayToString(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 22
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v18, "["

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 106
    .local v14, "length":I
    move-object/from16 v0, p0

    instance-of v0, v0, [I

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v11, p0

    .line 107
    check-cast v11, [I

    .line 108
    .local v11, "ints":[I
    array-length v14, v11

    .line 109
    array-length v0, v11

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 161
    .end local v11    # "ints":[I
    :cond_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const-string v21, "]"

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    return-object v18

    .line 109
    .restart local v11    # "ints":[I
    :cond_1
    aget v10, v11, v18

    .line 110
    .local v10, "i":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 112
    .end local v10    # "i":I
    .end local v11    # "ints":[I
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, [B

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v6, p0

    .line 113
    check-cast v6, [B

    .line 114
    .local v6, "bytes":[B
    array-length v14, v6

    .line 115
    array-length v0, v6

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-byte v12, v6, v18

    .line 116
    .local v12, "item":B
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 118
    .end local v6    # "bytes":[B
    .end local v12    # "item":B
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, [S

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, p0

    .line 119
    check-cast v17, [S

    .line 120
    .local v17, "shorts":[S
    move-object/from16 v0, v17

    array-length v14, v0

    .line 121
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-short v12, v17, v18

    .line 122
    .local v12, "item":S
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 124
    .end local v12    # "item":S
    .end local v17    # "shorts":[S
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, [J

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v15, p0

    .line 125
    check-cast v15, [J

    .line 126
    .local v15, "longs":[J
    array-length v14, v15

    .line 127
    array-length v0, v15

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-wide v12, v15, v18

    .line 128
    .local v12, "item":J
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 130
    .end local v12    # "item":J
    .end local v15    # "longs":[J
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, [F

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v9, p0

    .line 131
    check-cast v9, [F

    .line 132
    .local v9, "floats":[F
    array-length v14, v9

    .line 133
    array-length v0, v9

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget v12, v9, v18

    .line 134
    .local v12, "item":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 136
    .end local v9    # "floats":[F
    .end local v12    # "item":F
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, [D

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v8, p0

    .line 137
    check-cast v8, [D

    .line 138
    .local v8, "doubles":[D
    array-length v14, v8

    .line 139
    array-length v0, v8

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-wide v12, v8, v18

    .line 140
    .local v12, "item":D
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 142
    .end local v8    # "doubles":[D
    .end local v12    # "item":D
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, [Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v4, p0

    .line 143
    check-cast v4, [Z

    .line 144
    .local v4, "booleans":[Z
    array-length v14, v4

    .line 145
    array-length v0, v4

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-boolean v12, v4, v18

    .line 146
    .local v12, "item":Z
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 148
    .end local v4    # "booleans":[Z
    .end local v12    # "item":Z
    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, [C

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v7, p0

    .line 149
    check-cast v7, [C

    .line 150
    .local v7, "chars":[C
    array-length v14, v7

    .line 151
    array-length v0, v7

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-char v12, v7, v18

    .line 152
    .local v12, "item":C
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .end local v7    # "chars":[C
    .end local v12    # "item":C
    :cond_9
    move-object/from16 v16, p0

    .line 155
    check-cast v16, [Ljava/lang/Object;

    .line 156
    .local v16, "objects":[Ljava/lang/Object;
    move-object/from16 v0, v16

    array-length v14, v0

    .line 157
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v12, v16, v18

    .line 158
    .local v12, "item":Ljava/lang/Object;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/mtools/SystemUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v18, v18, 0x1

    goto :goto_8
.end method

.method public static getArrayDimension(Ljava/lang/Object;)I
    .locals 4
    .param p0, "objects"    # Ljava/lang/Object;

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "dim":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 24
    :cond_0
    return v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getType(Ljava/lang/Object;)C
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-static {p0}, Lcom/mtools/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "str":Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public static traverseArray(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/mtools/ArrayUtil;->traverseArray(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static traverseArray(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 195
    invoke-static {p1}, Lcom/mtools/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lcom/mtools/ArrayUtil;->getArrayDimension(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 200
    invoke-static {p1}, Lcom/mtools/ArrayUtil;->getType(Ljava/lang/Object;)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 211
    :sswitch_0
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_1
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_2
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_3
    check-cast p1, [Z

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_4
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_5
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_6
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_7
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 228
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move-object v1, p1

    .line 229
    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Lcom/mtools/ArrayUtil;->traverseArray(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x44 -> :sswitch_2
        0x46 -> :sswitch_6
        0x49 -> :sswitch_1
        0x4a -> :sswitch_5
        0x4c -> :sswitch_7
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
    .end sparse-switch
.end method
