.class public Lcom/android/internal/policy/impl/sec/UsimWidget;
.super Landroid/widget/LinearLayout;
.source "UsimWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 5
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"
    .parameter "callback"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 47
    return-void
.end method