.class public Lcom/android/killer/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogBool(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 21
    const-string v0, "AndroidKiller-boolean"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static LogChar(C)V
    .locals 2
    .param p0, "value"    # C

    .prologue
    .line 36
    const-string v0, "AndroidKiller-char"

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static LogChars([C)V
    .locals 2
    .param p0, "value"    # [C

    .prologue
    .line 46
    const-string v0, "AndroidKiller-char[]"

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static LogDouble(D)V
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 31
    const-string v0, "AndroidKiller-double"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static LogFloat(F)V
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 26
    const-string v0, "AndroidKiller-float"

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public static LogInt(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 11
    const-string v0, "AndroidKiller-int"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method

.method public static LogLong(J)V
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 41
    const-string v0, "AndroidKiller-long"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public static LogShort(S)V
    .locals 2
    .param p0, "value"    # S

    .prologue
    .line 51
    const-string v0, "AndroidKiller-short"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static LogStr(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "AndroidKiller-string"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
