.class public Lcom/samsung/commonimsservice/SamsungAPCommonService;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Lcom/samsung/commonimsservice/ICommonIMSService;


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CALL_END_CALL_NW_HANDOVER:I = 0x4

.field public static final IMS_CALL_LOW_BATTERY:I = 0x6

.field private static final IMS_CALL_NORMAL_DISCONNECT:I = 0x5

.field public static final IMS_CONN_ACTION:Ljava/lang/String; = "com.sec.android.ims.IMSService"

.field private static final IMS_SVC_USER_REJECT_REASON_USR_BUSY:I = 0x2

.field private static final IMS_SVC_USER_REJECT_REASON_USR_DECLINE:I = 0x3

.field public static final IMS_USER_REJECT_REASON_USR_BUSY_CS_CALL:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAPCommonService"

.field private static final MMTELSVCHDL:I = 0x0

.field private static final MSG_IMS_SERVICE_CONNECTED:I = 0x65

.field private static final MSG_IMS_SERVICE_DISCONNECTED:I = 0x66

.field private static final SIPURI_TYPE:Ljava/lang/String; = "0"

.field private static final SIPURI_VAL:I = 0x1

.field private static final SMS_SIP_SIPURI_PREFIX:Ljava/lang/String; = "sipuriprefix"

.field private static final SMS_SIP_URI_TYPE:Ljava/lang/String; = "uritype"

.field private static final TELURI_TYPE:Ljava/lang/String; = "1"

.field private static final TELURI_VAL:I = 0x3


# instance fields
.field private H:Landroid/os/Handler;

.field private isSpeakerOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mIMSCallStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIMSRegListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSRegisterStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

.field private mMuted:Z

.field private final mServiceConnectionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IImsServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/samsung/commonimsservice/ImsParams;

.field private regExpiry:I

.field private regUri:Ljava/lang/String;

.field private registrationStatus:Z

.field private serviceConnStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    .line 61
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {v0}, Lcom/samsung/commonimsservice/ImsParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 67
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    .line 170
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 102
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    .line 103
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->createSipService()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceConnected()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceDisconnected()V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    return p1
.end method

.method private createSipService()V
    .locals 4

    .prologue
    .line 108
    const-string v1, "SamsungAPCommonService"

    const-string v2, "Trying to connect to ims service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method private getCallType(II)I
    .locals 5
    .parameter "appType"
    .parameter "subType"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    .line 2173
    const/4 v0, -0x1

    .line 2175
    .local v0, callType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2177
    if-ne p1, v4, :cond_5

    .line 2178
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 2179
    const/4 v0, 0x5

    .line 2195
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2197
    return v0

    .line 2180
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 2181
    const/4 v0, 0x2

    goto :goto_0

    .line 2182
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 2183
    const/4 v0, 0x1

    goto :goto_0

    .line 2184
    :cond_3
    if-ne p2, v3, :cond_4

    .line 2185
    const/4 v0, 0x7

    goto :goto_0

    .line 2186
    :cond_4
    if-ne p2, v4, :cond_0

    .line 2187
    const/16 v0, 0x8

    goto :goto_0

    .line 2189
    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 2190
    const/4 v0, 0x2

    goto :goto_0

    .line 2191
    :cond_6
    if-ne p1, v3, :cond_0

    .line 2192
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getDeviceSpeakerStatus()Z
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside isSpeakerOn  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2159
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    const-string v0, "SamsungAPCommonService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private notifyConnectionListeners(Z)V
    .locals 3
    .parameter "isConnected"

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 159
    .local v1, listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 160
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_1

    .line 168
    .end local v1           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_2
    return-void
.end method

.method private onBadRequest(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 2148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2149
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 2150
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v1, :cond_0

    .line 2151
    const/16 v2, 0x190

    const-string v3, "Bad Request"

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 2148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2154
    .end local v1           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_1
    return-void
.end method

.method private onCaptureSuccess(ZLjava/lang/String;)V
    .locals 6
    .parameter "isForNearEnd"
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onCaptureSuccess() : nearEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1340
    if-nez p2, :cond_0

    .line 1359
    :goto_0
    return-void

    .line 1343
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 1344
    .local v1, path:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 1346
    .local v0, mimetype:[Ljava/lang/String;
    aput-object p2, v1, v4

    .line 1347
    if-eqz p1, :cond_1

    .line 1348
    const-string v2, "videocallimages/jpeg"

    aput-object v2, v0, v4

    .line 1353
    :goto_1
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;

    invoke-direct {v3, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 1350
    :cond_1
    const-string v2, "videocallimages/jpeg-scramble"

    aput-object v2, v0, v4

    goto :goto_1
.end method

.method private onImsServiceConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "NULL IMS service received!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    iget-object v2, v2, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    .line 141
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS event listener registration failed!!! with exception e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 147
    invoke-direct {p0, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    goto :goto_0
.end method

.method private onImsServiceDisconnected()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 154
    return-void
.end method

.method private setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;
    .locals 5
    .parameter "params"
    .parameter "peerUri"

    .prologue
    .line 1812
    const-string v3, "\\$"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1813
    .local v2, sCallerNos:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1814
    array-length v1, v2

    .line 1815
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt v0, v3, :cond_0

    .line 1816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1819
    :cond_0
    const-string v3, "UriCount"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1824
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return-object p1

    .line 1822
    :cond_1
    const-string v3, "setUriListForConference returned failure"

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateMuteState(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mute state to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2169
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 2170
    return-void
.end method


# virtual methods
.method public acceptChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1627
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1628
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot accept change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1631
    :cond_0
    const/4 v0, -0x1

    .line 1632
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1633
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "accept"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xf

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    return-void

    .line 1637
    :catch_0
    move-exception v1

    .line 1638
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Accept change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addUserForConferenceCall(ILjava/lang/String;I)I
    .locals 9
    .parameter "sessionID"
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1697
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1699
    :cond_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1700
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, dialType:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1702
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1704
    :cond_1
    const/4 v3, -0x1

    .line 1705
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1707
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1708
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1709
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1710
    const/4 v1, 0x1

    .line 1711
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1712
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1713
    const/4 v1, 0x3

    .line 1720
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1721
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1723
    if-eqz v4, :cond_4

    .line 1724
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1733
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v6, 0x15

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v8}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, p1, v8}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    return v3

    .line 1715
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1718
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1726
    :cond_4
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1727
    const-string v4, "Sip"

    .line 1728
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1734
    :catch_0
    move-exception v2

    .line 1735
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public answerCall(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1413
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1417
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1420
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public answerCallAudioOnly(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1397
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call audio only R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1401
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1403
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    return-void

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2034
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2035
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot cancel call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2038
    :cond_0
    const/4 v0, -0x1

    .line 2040
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2041
    const/4 v0, 0x2

    .line 2049
    :goto_0
    const/4 v2, -0x1

    .line 2050
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    return-void

    .line 2042
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2043
    const/4 v0, 0x1

    goto :goto_0

    .line 2045
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2051
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2052
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public captureSurfaceImage(ZI)V
    .locals 3
    .parameter "isNearEnd"
    .parameter "onGoingCallType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2308
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2309
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2313
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2317
    return-void

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeCall(III)V
    .locals 4
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 2129
    if-ne p3, v3, :cond_2

    .line 2130
    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    .line 2132
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    .line 2145
    :cond_1
    :goto_0
    return-void

    .line 2133
    :cond_2
    if-eq p3, v1, :cond_3

    if-ne p3, v2, :cond_5

    .line 2134
    :cond_3
    if-ne p2, v0, :cond_4

    .line 2135
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    goto :goto_0

    .line 2136
    :cond_4
    if-ne p2, v3, :cond_1

    .line 2137
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0

    .line 2139
    :cond_5
    if-ne p3, v0, :cond_1

    .line 2140
    if-eq p2, v1, :cond_6

    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_1

    .line 2142
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0
.end method

.method public continueVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1542
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1543
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue video R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1546
    :cond_0
    const/4 v1, -0x1

    .line 1547
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1548
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1551
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    return-void

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deRegisterForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2235
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2237
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2239
    :cond_0
    return-void
.end method

.method public deRegisterForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2243
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2247
    :cond_0
    return-void
.end method

.method public deRegisterForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2251
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2255
    :cond_0
    return-void
.end method

.method public deinitSurface(Z)V
    .locals 3
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2322
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2323
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2327
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->deinitSurface(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2331
    return-void

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 2058
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2059
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2062
    :cond_0
    const/4 v2, -0x1

    .line 2063
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2064
    .local v0, appType:I
    if-ne p3, v5, :cond_1

    if-ne p2, v4, :cond_1

    .line 2065
    const/4 v0, 0x1

    .line 2076
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2077
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2079
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    return-void

    .line 2066
    :cond_1
    if-ne p3, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 2067
    const/4 v0, 0x3

    goto :goto_0

    .line 2068
    :cond_2
    if-ne p3, v6, :cond_3

    if-ne p2, v4, :cond_3

    .line 2069
    const/4 v0, 0x4

    goto :goto_0

    .line 2070
    :cond_3
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    if-ne p2, v4, :cond_4

    .line 2071
    const/4 v0, 0x4

    goto :goto_0

    .line 2073
    :cond_4
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Down grade is not allowed"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2080
    :catch_0
    move-exception v1

    .line 2081
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2009
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2012
    :cond_0
    const/4 v0, -0x1

    .line 2014
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2015
    const/4 v0, 0x2

    .line 2022
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2023
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2026
    const/4 v2, -0x1

    .line 2027
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    return-void

    .line 2016
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2017
    const/4 v0, 0x1

    goto :goto_0

    .line 2019
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2028
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2029
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1930
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1931
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1934
    :cond_0
    const/4 v2, -0x1

    .line 1935
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1937
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1938
    const/4 v0, 0x2

    .line 1945
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1947
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 1948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1949
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1957
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    return-void

    .line 1939
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1940
    const/4 v0, 0x1

    goto :goto_0

    .line 1942
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1951
    :cond_4
    const/4 v3, 0x6

    if-ne p3, v3, :cond_1

    .line 1952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_LOW_BATTERY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1953
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 1959
    :catch_0
    move-exception v1

    .line 1960
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCurrentLatchedNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2334
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2335
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2343
    :goto_0
    return-object v1

    .line 2340
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->getCurrentLatchedNetwork()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxVolume(I)I
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public holdCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1362
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1363
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :cond_0
    const/4 v1, -0x1

    .line 1367
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1368
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1370
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    return-void

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public holdVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1525
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1526
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1529
    :cond_0
    const/4 v1, -0x1

    .line 1530
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1531
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1533
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call: Service Not Up"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isDeviceOnEHRPD()Z
    .locals 3

    .prologue
    .line 1869
    const/4 v1, 0x0

    .line 1870
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1872
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnEHRPD()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1878
    :cond_0
    :goto_0
    return v1

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1875
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceOnLTE()Z
    .locals 3

    .prologue
    .line 1856
    const/4 v1, 0x0

    .line 1857
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1859
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnLTE()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1865
    :cond_0
    :goto_0
    return v1

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1862
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFrontCamInUse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1882
    const/4 v1, 0x0

    .line 1883
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v3, :cond_0

    .line 1885
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v3}, Lcom/sec/android/internal/ims/IIMSService;->isFrontCamInUse()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1886
    .local v2, retVal:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1887
    const/4 v1, 0x1

    .line 1896
    .end local v2           #retVal:I
    :cond_0
    :goto_0
    return v1

    .line 1889
    .restart local v2       #retVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1891
    .end local v2           #retVal:I
    :catch_0
    move-exception v0

    .line 1892
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1893
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isIMSEnabledOnWifi()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2348
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2349
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2356
    :goto_0
    return v1

    .line 2353
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isIMSEnabledOnWifi()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2354
    :catch_0
    move-exception v0

    .line 2355
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isImsForbidden()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2361
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2362
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2363
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2366
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->isImsForbidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2367
    :catch_0
    move-exception v0

    .line 2368
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2369
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isMuted(I)Z
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMuted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;I)I
    .locals 11
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x5

    .line 1742
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1743
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make media call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1746
    :cond_0
    const/4 v3, -0x1

    .line 1748
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1749
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, dialType:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1751
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1753
    :cond_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1755
    if-ne p2, v7, :cond_3

    .line 1756
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1757
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1769
    :goto_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtDialNum"

    invoke-virtual {v5, v6, p1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    if-ne p2, v8, :cond_2

    .line 1771
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1774
    :cond_2
    const/4 v1, 0x1

    .line 1775
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_7

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1776
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1777
    const/4 v1, 0x3

    .line 1784
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1785
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1787
    if-eqz v4, :cond_8

    .line 1788
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :goto_2
    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    monitor-enter v6

    .line 1797
    if-ne p2, v8, :cond_9

    .line 1798
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v10}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1805
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 1758
    .end local v1           #dialTypeVal:I
    :cond_3
    if-ne p2, v10, :cond_4

    .line 1759
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1760
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v10}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1761
    :cond_4
    if-ne p2, v8, :cond_5

    .line 1762
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1763
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1765
    :cond_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1766
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1779
    .restart local v1       #dialTypeVal:I
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1782
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1790
    :cond_8
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1791
    const-string v4, "Sip"

    .line 1792
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1800
    :cond_9
    :try_start_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v10}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    goto :goto_3

    .line 1802
    :catch_0
    move-exception v2

    .line 1803
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v7, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v7}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1806
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public registerForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register call state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2202
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for call state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2204
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2208
    :goto_0
    return-void

    .line 2206
    :cond_0
    const-string v0, "Can\'t registered for call state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register register status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for register state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2218
    :goto_0
    return-void

    .line 2216
    :cond_0
    const-string v0, "Can\'t registered for register status state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register connection status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for connection state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2224
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    if-eqz v0, :cond_1

    .line 2226
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_0
.end method

.method public rejectCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1900
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1901
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1904
    :cond_0
    const/4 v2, -0x1

    .line 1905
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1907
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1908
    const/4 v0, 0x2

    .line 1915
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1917
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1918
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1921
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    return-void

    .line 1909
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1910
    const/4 v0, 0x1

    goto :goto_0

    .line 1912
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1922
    :catch_0
    move-exception v1

    .line 1923
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 1966
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1967
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1970
    :cond_0
    const/4 v2, -0x1

    .line 1971
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1973
    .local v0, callType:I
    if-ne p2, v5, :cond_2

    .line 1974
    const/4 v0, 0x2

    .line 1981
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1984
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 1985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_END_CALL_NW_HANDOVER: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1986
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1997
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2000
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    return-void

    .line 1975
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1976
    const/4 v0, 0x1

    goto :goto_0

    .line 1978
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1988
    :cond_4
    if-ne p3, v4, :cond_5

    .line 1989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_LOW_BATTERY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1990
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 1992
    :cond_5
    if-eq p3, v5, :cond_6

    const/4 v3, 0x7

    if-ne p3, v3, :cond_1

    .line 1993
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_SVC_USER_REJECT_REASON_USR_BUSY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1994
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2001
    :catch_0
    move-exception v1

    .line 2002
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1644
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1645
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot reject change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1648
    :cond_0
    const/4 v0, -0x1

    .line 1649
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1650
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "reject"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    return-void

    .line 1654
    :catch_0
    move-exception v1

    .line 1655
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Reject change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetCameraID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2258
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_0

    .line 2260
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->resetCameraID()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2268
    :goto_0
    return-void

    .line 2261
    :catch_0
    move-exception v0

    .line 2262
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2265
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Ims interface is null stop we can not reset camera ID now!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1378
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1379
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot resume call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_0
    const/4 v1, -0x1

    .line 1383
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1384
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1385
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "ssId"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1387
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xb

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    return-void

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendDtmf(II)Z
    .locals 7
    .parameter "sessionID"
    .parameter "code"

    .prologue
    .line 1660
    const/4 v1, 0x0

    .line 1661
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    move v2, v1

    .line 1677
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 1665
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1666
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "keyvalue"

    invoke-virtual {v3, v4, p2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1667
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "KeyeventType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1670
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 1677
    .restart local v2       #ret:I
    goto :goto_0

    .line 1673
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1674
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendLiveVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2295
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2296
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2300
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->sendLiveVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    return-void

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 3
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2283
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2284
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2288
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->sendStillImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2292
    return-void

    .line 2289
    :catch_0
    move-exception v0

    .line 2290
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAudioMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2391
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2400
    :goto_0
    return-void

    .line 2396
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setAudioMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2397
    :catch_0
    move-exception v0

    .line 2398
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoResponse(II)V
    .locals 4
    .parameter "flag"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1828
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1829
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set auto response R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1832
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1841
    :goto_0
    return-void

    .line 1837
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCameraOrientation(I)V
    .locals 3
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1844
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1845
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1849
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    return-void

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisplay(ILandroid/view/SurfaceHolder;Ljava/lang/String;)V
    .locals 5
    .parameter "sessionID"
    .parameter "holder"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1513
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1517
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/sec/android/internal/ims/IIMSService;->startVideoRenderer(Landroid/view/Surface;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    return-void

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Can\'t set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSpeakerMode(IZ)V
    .locals 1
    .parameter "sessionID"
    .parameter "speakerMode"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1509
    return-void
.end method

.method public setVolume(II)V
    .locals 3
    .parameter "sessionID"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1559
    if-gez p2, :cond_0

    .line 1567
    :goto_0
    return-void

    .line 1561
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1562
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public startAudio(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1574
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1575
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1579
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start audio failed R[Service is not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera(IILandroid/view/SurfaceHolder;ZZLjava/lang/String;)I
    .locals 9
    .parameter "sessionID"
    .parameter "cameraID"
    .parameter "surfaceHolder"
    .parameter "isCallEstablished"
    .parameter "isConference"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1430
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot start camera R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_0
    if-eqz p3, :cond_1

    .line 1435
    :try_start_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V

    .line 1444
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v8

    .line 1441
    .local v8, e:Landroid/os/RemoteException;
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Camera cannot be acquired"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMedia(I)V
    .locals 0
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1600
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startAudio(I)V

    .line 1601
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startVideo(I)V

    .line 1602
    return-void
.end method

.method public startVideo(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1587
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1588
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1592
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    return-void

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopCamera(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1682
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot stop camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1686
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->stopCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    const/4 v1, 0x0

    return v1

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1689
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera not stopped"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public swapVideoSurface(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2271
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2272
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2276
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->swapVideoSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    return-void

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1463
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1464
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot switch camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1468
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    return-void

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toggleMute(I)V
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1622
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute after = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1624
    return-void

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public upgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2087
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2088
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2091
    :cond_0
    const/4 v2, -0x1

    .line 2092
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2094
    .local v0, appType:I
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2096
    const/4 v3, 0x5

    if-ne v3, p3, :cond_3

    .line 2097
    if-ne v4, p2, :cond_2

    .line 2098
    const/4 v0, 0x5

    .line 2103
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2105
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2125
    :cond_1
    :goto_1
    return-void

    .line 2100
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2106
    :catch_0
    move-exception v1

    .line 2107
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Upgrade failed R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2109
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    if-ne p3, v4, :cond_1

    .line 2111
    if-ne v4, p2, :cond_4

    .line 2112
    const/4 v0, 0x7

    .line 2116
    :goto_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2119
    :try_start_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0x13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2120
    :catch_1
    move-exception v1

    .line 2121
    .restart local v1       #e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2114
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public voiceRecord(IILjava/lang/String;)V
    .locals 3
    .parameter "command"
    .parameter "sessionID"
    .parameter "mFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1450
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot start camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1453
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p3}, Lcom/sec/android/internal/ims/IIMSService;->voiceRecord(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    return-void

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "errorString"

    .prologue
    .line 2375
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2388
    :goto_0
    return-void

    .line 2382
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims interface is writeErrorData... !!errorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...errorString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2383
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2384
    :catch_0
    move-exception v0

    .line 2386
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
