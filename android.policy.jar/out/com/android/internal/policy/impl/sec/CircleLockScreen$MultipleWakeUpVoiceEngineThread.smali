.class Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
.super Ljava/lang/Thread;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultipleWakeUpVoiceEngineThread"
.end annotation


# instance fields
.field private final MSG_CREATE_WAKEUP_CMD:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_LAUNCH_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private mContext:Landroid/content/Context;

.field private mIsRunning:Z

.field private mIsSupportMultipleWakeUp:Z

.field private mVEPowerManager:Landroid/os/PowerManager;

.field private mVThreadHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    .line 146
    const-string v0, "MultipleWakeUpVoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z

    .line 136
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_CREATE_WAKEUP_CMD:I

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    .line 138
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_START_VERIFY_CMD:I

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    .line 140
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    .line 141
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_QUIT_LOOPER:I

    .line 142
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_LAUNCH_CMD:I

    .line 143
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

    .line 147
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;

    .line 148
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    .line 149
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->dismissLockScreen()V

    return-void
.end method

.method private dismissLockScreen()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->goToUnlockScreen()V

    .line 343
    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .registers 4
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 375
    return-void
.end method

.method public OnRmsForWave(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 380
    return-void
.end method

.method public OnVerifyResult(IS)V
    .registers 6
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z

    if-nez v0, :cond_2c

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIsRunning is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2b
    :goto_2b
    return-void

    .line 354
    :cond_2c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 357
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3e

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 360
    :cond_3e
    const/16 v0, -0xa

    if-eq p1, v0, :cond_46

    const/16 v0, -0xb

    if-ne p1, v0, :cond_52

    .line 361
    :cond_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 363
    :cond_52
    const/16 v0, -0xc

    if-ne p1, v0, :cond_65

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnVerifyResult() voice recognition failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto :goto_2b

    .line 367
    :cond_65
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    .line 368
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->launch(S)V

    goto :goto_2b
.end method

.method public isSupportMultipleWakeUp()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    return v0
.end method

.method public launch(S)V
    .registers 5
    .parameter "cmd"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    return-void
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    return-void
.end method

.method protected removeAllMsgs()V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 155
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpCreate()V

    .line 277
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 279
    return-void
.end method

.method public setVoiceRecognitionFailCue()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setVoiceRecognitionFailed()V

    .line 337
    return-void
.end method

.method public wakeUpCreate()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    return-void
.end method

.method public wakeUpDestroy()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    return-void
.end method

.method public wakeUpInit()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    return-void
.end method

.method public wakeUpStartVerify()V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    return-void
.end method

.method public wakeUpTerminateVerify()V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method public wakeUpTerminateVerifyAfter(J)V
    .registers 7
    .parameter "delayMillis"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x64

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    return-void
.end method
