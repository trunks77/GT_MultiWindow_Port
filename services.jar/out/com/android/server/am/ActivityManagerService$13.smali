.class final Lcom/android/server/am/ActivityManagerService$13;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 10762
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, object1:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;"
    .local p2, object2:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 10766
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v3, v0, :cond_22

    .line 10767
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v3, v0, :cond_20

    move v0, v1

    .line 10772
    :goto_1f
    return v0

    :cond_20
    move v0, v2

    .line 10767
    goto :goto_1f

    .line 10769
    :cond_22
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_4a

    .line 10770
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_48

    :goto_46
    move v0, v1

    goto :goto_1f

    :cond_48
    move v1, v2

    goto :goto_46

    .line 10772
    :cond_4a
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10762
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Landroid/util/Pair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$13;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
