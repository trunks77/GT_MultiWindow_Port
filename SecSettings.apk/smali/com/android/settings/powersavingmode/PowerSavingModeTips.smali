.class public Lcom/android/settings/powersavingmode/PowerSavingModeTips;
.super Landroid/app/Fragment;
.source "PowerSavingModeTips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0b01b9

    const/16 v7, 0x8

    .line 42
    const v5, 0x7f04009b

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 48
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, mBackgroundTips:Landroid/widget/TextView;
    const v5, 0x7f090993

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .end local v0           #mBackgroundTips:Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f0b01b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, mBackgroundTipsTitle:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .restart local v0       #mBackgroundTips:Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    :cond_1
    const v5, 0x7f0b01ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 64
    .local v3, mHapticTipsTitle:Landroid/widget/TextView;
    const v5, 0x7f0b01bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, mHapticTips:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    return-object v4
.end method
