.class abstract Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;
.super Ljava/lang/Thread;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .registers 6

    .prologue
    .line 240
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyExt;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 243
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 255
    .end local v1           #result:Z
    :goto_1c
    return-void

    .line 248
    :catch_1d
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method