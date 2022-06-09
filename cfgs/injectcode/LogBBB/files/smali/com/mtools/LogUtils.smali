.class public final Lcom/mtools/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static configAllowLog:Z

.field public static configTagPrefix:Ljava/lang/String;

.field private static logger:Lcom/mtools/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/mtools/Logger;

    invoke-direct {v0}, Lcom/mtools/Logger;-><init>()V

    sput-object v0, Lcom/mtools/LogUtils;->logger:Lcom/mtools/Logger;

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mtools/LogUtils;->configAllowLog:Z

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/mtools/LogUtils;->configTagPrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lcom/mtools/LogUtils;->logger:Lcom/mtools/Logger;

    invoke-static {}, Lcom/mtools/SystemUtil;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mtools/Logger;->json(Ljava/lang/StackTraceElement;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 21
    sget-object v0, Lcom/mtools/LogUtils;->logger:Lcom/mtools/Logger;

    invoke-static {}, Lcom/mtools/SystemUtil;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mtools/Logger;->v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 17
    sget-object v0, Lcom/mtools/LogUtils;->logger:Lcom/mtools/Logger;

    invoke-static {}, Lcom/mtools/SystemUtil;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/mtools/Logger;->v(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method
