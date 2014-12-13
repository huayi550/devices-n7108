.class Lcom/android/server/am/ActivityManagerService$ServiceMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceMap"
.end annotation


# instance fields
.field private final mServicesByIntentPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServicesByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ServiceMap;->mServicesByNamePerUser:Landroid/util/SparseArray;

    .line 16135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ServiceMap;->mServicesByIntentPerUser:Landroid/util/SparseArray;

    return-void
.end method

.method private getServices(I)Ljava/util/HashMap;
    .locals 2
    .parameter "callingUser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16194
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceMap;->mServicesByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 16195
    .local v0, map:Ljava/util/HashMap;
    if-nez v0, :cond_0

    .line 16196
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16197
    .restart local v0       #map:Ljava/util/HashMap;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceMap;->mServicesByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16199
    :cond_0
    return-object v0
.end method

.method private getServicesByIntent(I)Ljava/util/HashMap;
    .locals 2
    .parameter "callingUser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16204
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceMap;->mServicesByIntentPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 16205
    .local v0, map:Ljava/util/HashMap;
    if-nez v0, :cond_0

    .line 16206
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16207
    .restart local v0       #map:Ljava/util/HashMap;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceMap;->mServicesByIntentPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16209
    :cond_0
    return-object v0
.end method


# virtual methods
.method getAllServices(I)Ljava/util/Collection;
    .locals 1
    .parameter "callingUser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16190
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServices(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getServiceByIntent(Landroid/content/Intent$FilterComparison;)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .parameter "filter"

    .prologue
    .line 16158
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServiceByIntent(Landroid/content/Intent$FilterComparison;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    return-object v0
.end method

.method getServiceByIntent(Landroid/content/Intent$FilterComparison;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .parameter "filter"
    .parameter "callingUser"

    .prologue
    .line 16154
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServicesByIntent(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServiceByName(Landroid/content/ComponentName;)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .parameter "name"

    .prologue
    .line 16147
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    return-object v0
.end method

.method getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .parameter "name"
    .parameter "callingUser"

    .prologue
    .line 16143
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServices(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method putServiceByIntent(Landroid/content/Intent$FilterComparison;ILcom/android/server/am/ServiceRecord;)V
    .locals 1
    .parameter "filter"
    .parameter "callingUser"
    .parameter "value"

    .prologue
    .line 16169
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServicesByIntent(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16170
    return-void
.end method

.method putServiceByName(Landroid/content/ComponentName;ILcom/android/server/am/ServiceRecord;)V
    .locals 1
    .parameter "name"
    .parameter "callingUser"
    .parameter "value"

    .prologue
    .line 16163
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServices(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16164
    return-void
.end method

.method removeServiceByIntent(Landroid/content/Intent$FilterComparison;I)V
    .locals 2
    .parameter "filter"
    .parameter "callingUser"

    .prologue
    .line 16182
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServicesByIntent(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 16186
    .local v0, removed:Lcom/android/server/am/ServiceRecord;
    return-void
.end method

.method removeServiceByName(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "name"
    .parameter "callingUser"

    .prologue
    .line 16174
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityManagerService$ServiceMap;->getServices(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 16178
    .local v0, removed:Lcom/android/server/am/ServiceRecord;
    return-void
.end method
