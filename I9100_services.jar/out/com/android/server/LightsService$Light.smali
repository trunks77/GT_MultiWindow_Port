.class public final Lcom/android/server/LightsService$Light;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Light"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;I)V
    .registers 3
    .parameter
    .parameter "id"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p2, p0, Lcom/android/server/LightsService$Light;->mId:I

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LightsService$Light;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/LightsService$Light;IIIII)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .registers 13
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_16

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_16

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_16

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-ne p4, v0, :cond_16

    invoke-static {}, Lcom/android/server/LightsService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 236
    :cond_16
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 237
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 238
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 239
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 240
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1200(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$1300(IIIIIII)V

    .line 242
    :cond_2e
    return-void
.end method

.method private stopFlashing()V
    .registers 7

    .prologue
    .line 220
    monitor-enter p0

    .line 222
    :try_start_1
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    .line 224
    :try_start_12
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    #calls: Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$900(Lcom/android/server/LightsService;I)V

    .line 225
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_26

    .line 228
    :cond_1a
    :try_start_1a
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 229
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 230
    return-void

    .line 225
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0

    .line 229
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_29

    throw v0
.end method


# virtual methods
.method public pulse()V
    .registers 3

    .prologue
    .line 185
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LightsService$Light;->pulse(II)V

    .line 186
    return-void
.end method

.method public pulse(II)V
    .registers 9
    .parameter "color"
    .parameter "onMS"

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_1
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-nez v0, :cond_28

    .line 191
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 192
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    :cond_28
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public setBrightness(I)V
    .registers 3
    .parameter "brightness"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 149
    return-void
.end method

.method public setBrightness(II)V
    .registers 9
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    and-int/lit16 v1, p1, 0xff

    .line 154
    .local v1, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_11
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 156
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setColor(I)V
    .registers 8
    .parameter "color"

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setFlashing(IIII)V
    .registers 13
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    .line 166
    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6d

    .line 169
    :cond_13
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v7

    monitor-enter v7
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_6a

    .line 170
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    #calls: Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;IIIIIZ)V

    .line 172
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_1a .. :try_end_65} :catchall_67

    .line 181
    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_6a

    .line 182
    return-void

    .line 177
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v7
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v0

    .line 181
    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6a

    throw v0

    .line 179
    :cond_6d
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_73
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_6a

    goto :goto_65
.end method

.method public turnOff()V
    .registers 7

    .prologue
    .line 198
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_66

    .line 201
    :cond_13
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_74

    .line 202
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    #calls: Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$900(Lcom/android/server/LightsService;I)V

    .line 204
    invoke-static {}, Lcom/android/server/LightsService;->access$1000()I

    move-result v0

    if-eqz v0, :cond_65

    .line 205
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_1a .. :try_end_66} :catchall_71

    .line 215
    :cond_66
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_6c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 216
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_74

    .line 217
    return-void

    .line 211
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v0

    .line 216
    :catchall_74
    move-exception v0

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_74

    throw v0
.end method
