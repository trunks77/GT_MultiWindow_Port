.class Lcom/android/server/pm/ShutdownThread$Log;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static handler:Lcom/android/server/pm/ShutdownThread$Log;

.field private static state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 748
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    .line 749
    const-string v0, ""

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 824
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 825
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 804
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 805
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 809
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 810
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 763
    sput-object p0, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    .line 764
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-nez v0, :cond_8

    .line 769
    :goto_7
    return-void

    .line 767
    :cond_8
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShutdownThread$Log;->removeMessages(I)V

    .line 768
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7
.end method

.method public static startState()V
    .registers 4

    .prologue
    .line 780
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-nez v0, :cond_26

    .line 781
    const-string v0, "ShutdownDelay"

    const-string v1, "start state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v0, Lcom/android/server/pm/ShutdownThread$Log;

    invoke-direct {v0}, Lcom/android/server/pm/ShutdownThread$Log;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    .line 786
    :goto_12
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->sendEmptyMessage(I)Z

    .line 787
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    new-instance v1, Lcom/android/server/pm/ShutdownThread$Log$1;

    invoke-direct {v1}, Lcom/android/server/pm/ShutdownThread$Log$1;-><init>()V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    return-void

    .line 784
    :cond_26
    const-string v0, "ShutdownDelay"

    const-string v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static stopState()V
    .registers 2

    .prologue
    .line 772
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-nez v0, :cond_5

    .line 777
    :goto_4
    return-void

    .line 774
    :cond_5
    const-string v0, "ShutdownDelay"

    const-string v1, "stop state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->removeMessages(I)V

    .line 776
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->removeMessages(I)V

    goto :goto_4
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 799
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 800
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 814
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 815
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 819
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 820
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 755
    const-string v0, "ShutdownDelay"

    sget-object v1, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 757
    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    .line 759
    :cond_11
    return-void
.end method
