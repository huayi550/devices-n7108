.class public Lcom/sec/android/app/camera/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# static fields
.field public static final KEY_LOCATION_ID:Ljava/lang/String; = "aw_daemon_service_key_loc_code"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final CAMERA_SERVICE_CODE:I

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_REFRESH_INTERVAL:Ljava/lang/String;

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private TAG:Ljava/lang/String;

.field private mAppServiceStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCityId:J

.field private mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mContextualWeather:I

.field private mHandler:Landroid/os/Handler;

.field private mWeatherIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "CameraWeather"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 38
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 40
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 41
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 44
    const-string v0, "aw_daemon_service_key_autorefresh_interval"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->KEY_REFRESH_INTERVAL:Ljava/lang/String;

    .line 47
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->CAMERA_SERVICE_CODE:I

    .line 49
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 50
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 52
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Weather;->mCityId:J

    .line 56
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 59
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mAppServiceStatus:I

    .line 61
    check-cast p1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 62
    new-instance v0, Lcom/sec/android/app/camera/Weather$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Weather$1;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method private static AppServiceOff(II)I
    .locals 1
    .parameter "value"
    .parameter "code"

    .prologue
    .line 150
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    .line 151
    return p0
.end method

.method private static AppServiceOn(II)I
    .locals 0
    .parameter "value"
    .parameter "code"

    .prologue
    .line 146
    or-int/2addr p0, p1

    .line 147
    return p0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method public static isAccuWeatherEnable()Z
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isSinaweatherEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isWeathernewsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 88
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    const/4 v1, 0x1

    .line 92
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanFeature()Z
    .locals 2

    .prologue
    .line 98
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 78
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    const/4 v1, 0x1

    .line 82
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 109
    const-string v0, "kweather"

    .line 110
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 114
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSinaweatherEnable()Z
    .locals 4

    .prologue
    .line 120
    const-string v0, "sinaweather"

    .line 121
    .local v0, DAEMON_SINAWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sinaweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x1

    .line 125
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWeathernewsEnable()Z
    .locals 4

    .prologue
    .line 131
    const-string v0, "weathernewsjp"

    .line 132
    .local v0, DAEMON_WEATHERNEWS:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isJapanFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "weathernewsjp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x1

    .line 136
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setContextualWeather(I)V
    .locals 6
    .parameter "weatherIconNum"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 319
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 370
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contextual Tag Weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 323
    :pswitch_0
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 330
    :pswitch_1
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 344
    :pswitch_2
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 367
    :pswitch_3
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isSinaweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 429
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isWeathernewsEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    sparse-switch p1, :sswitch_data_0

    .line 456
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 433
    :sswitch_0
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 439
    :sswitch_1
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 447
    :sswitch_2
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 453
    :sswitch_3
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 460
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 516
    :pswitch_4
    iput v1, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 469
    :pswitch_5
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 480
    :pswitch_6
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 494
    :pswitch_7
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 508
    :pswitch_8
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 513
    :pswitch_9
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 430
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_3
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_3
        0x74 -> :sswitch_3
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_2
        0xa0 -> :sswitch_3
        0xaa -> :sswitch_3
        0xb5 -> :sswitch_3
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_3
        0xcd -> :sswitch_3
        0xce -> :sswitch_1
        0xcf -> :sswitch_1
        0xd0 -> :sswitch_1
        0xd1 -> :sswitch_1
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_1
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_1
        0xd7 -> :sswitch_3
        0xd8 -> :sswitch_3
        0xd9 -> :sswitch_3
        0xda -> :sswitch_1
        0xdb -> :sswitch_1
        0xdc -> :sswitch_1
        0xdd -> :sswitch_1
        0xde -> :sswitch_1
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_1
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_1
        0xe3 -> :sswitch_1
        0xe4 -> :sswitch_3
        0xe5 -> :sswitch_3
        0xe6 -> :sswitch_3
        0xe7 -> :sswitch_1
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_3
        0x104 -> :sswitch_3
        0x10e -> :sswitch_3
        0x119 -> :sswitch_3
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_1
        0x12f -> :sswitch_3
        0x130 -> :sswitch_2
        0x132 -> :sswitch_2
        0x134 -> :sswitch_2
        0x135 -> :sswitch_3
        0x137 -> :sswitch_2
        0x139 -> :sswitch_1
        0x13a -> :sswitch_3
        0x13b -> :sswitch_3
        0x13c -> :sswitch_2
        0x13d -> :sswitch_1
        0x140 -> :sswitch_2
        0x141 -> :sswitch_1
        0x142 -> :sswitch_3
        0x143 -> :sswitch_2
        0x144 -> :sswitch_2
        0x145 -> :sswitch_2
        0x146 -> :sswitch_3
        0x147 -> :sswitch_3
        0x148 -> :sswitch_2
        0x149 -> :sswitch_2
        0x154 -> :sswitch_3
        0x15e -> :sswitch_2
        0x169 -> :sswitch_3
        0x173 -> :sswitch_3
        0x190 -> :sswitch_3
        0x191 -> :sswitch_3
        0x192 -> :sswitch_3
        0x193 -> :sswitch_3
        0x195 -> :sswitch_3
        0x196 -> :sswitch_3
        0x197 -> :sswitch_3
        0x199 -> :sswitch_3
        0x19b -> :sswitch_3
        0x19d -> :sswitch_3
        0x19e -> :sswitch_3
        0x1a4 -> :sswitch_3
        0x1a5 -> :sswitch_3
        0x1a6 -> :sswitch_3
        0x1a7 -> :sswitch_3
        0x1a8 -> :sswitch_3
        0x1a9 -> :sswitch_3
        0x1aa -> :sswitch_3
        0x1ab -> :sswitch_3
        0x1ae -> :sswitch_3
        0x1c2 -> :sswitch_3
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_0
        0x228 -> :sswitch_1
        0x229 -> :sswitch_2
        0x22e -> :sswitch_2
        0x232 -> :sswitch_1
        0x233 -> :sswitch_2
        0x238 -> :sswitch_2
        0x23c -> :sswitch_1
        0x23d -> :sswitch_2
        0x246 -> :sswitch_1
        0x247 -> :sswitch_2
        0x258 -> :sswitch_0
        0x352 -> :sswitch_2
        0x353 -> :sswitch_2
        0x354 -> :sswitch_2
        0x355 -> :sswitch_2
        0x356 -> :sswitch_3
        0x357 -> :sswitch_2
        0x35d -> :sswitch_2
        0x35e -> :sswitch_2
        0x35f -> :sswitch_2
        0x360 -> :sswitch_3
        0x361 -> :sswitch_2
        0x367 -> :sswitch_2
        0x368 -> :sswitch_2
        0x369 -> :sswitch_2
        0x36a -> :sswitch_3
        0x371 -> :sswitch_2
        0x372 -> :sswitch_2
        0x373 -> :sswitch_2
        0x374 -> :sswitch_3
    .end sparse-switch

    .line 460
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public Connect()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 158
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    const-string v4, "com.sec.android.widgetapp.ap.hero.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 160
    const-string v4, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 173
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 174
    .local v3, mAppServiceStatus:I
    and-int/lit8 v4, v3, 0x10

    if-eq v4, v7, :cond_1

    .line 175
    invoke-static {v3, v7}, Lcom/sec/android/app/camera/Weather;->AppServiceOn(II)I

    move-result v3

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 183
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.kweather"

    const-string v5, "com.sec.android.daemonapp.ap.kweather.KWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 203
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 207
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    new-instance v4, Lcom/sec/android/app/camera/Weather$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/Weather$2;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v5, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Weather;->updateWeatherInfo()V

    .line 231
    return-void

    .line 163
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isSinaweatherEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 164
    const-string v4, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 165
    const-string v4, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.REFRESH"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_4
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isWeathernewsEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const-string v4, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 170
    const-string v4, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v4, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    .line 187
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mAppServiceStatus:I
    :cond_5
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isSinaweatherEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v5, "com.sec.android.daemonapp.ap.sinaweather.SinaWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 192
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_6
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isWeathernewsEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 193
    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    const-string v5, "Connect to weathernewsjp daemon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.weathernewsjp"

    const-string v5, "com.sec.android.daemonapp.ap.weathernewsjp.WeathernewsjpDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 199
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.accuweather"

    const-string v5, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 226
    .restart local v1       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public Disconnect()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 236
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, mAppServiceStatus:I
    and-int/lit8 v3, v2, 0x10

    if-ne v3, v6, :cond_0

    .line 238
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/Weather;->AppServiceOff(II)I

    move-result v2

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isKweatherEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.kweather"

    const-string v4, "com.sec.android.daemonapp.ap.kweather.KWeatherDaemonService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    :goto_1
    return-void

    .line 250
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isSinaweatherEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v4, "com.sec.android.daemonapp.ap.sinaweather.SinaWeatherDaemonService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 255
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isWeathernewsEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    const-string v4, "Disconnect to weathernewsjp daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.weathernewsjp"

    const-string v4, "com.sec.android.daemonapp.ap.weathernewsjp.WeathernewsjpDaemonService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 262
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.accuweather"

    const-string v4, "com.sec.android.daemonapp.ap.accuweather.AccuWeatherDaemonService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 272
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/sec/android/app/camera/Weather;->mCityId:J

    return-wide v0
.end method

.method public getContextualWeather()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    return v0
.end method

.method public updateWeatherInfo()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 281
    iget-object v6, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_app_service_status"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 282
    .local v2, mAppServiceStatus:I
    and-int/lit8 v6, v2, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    .line 283
    .local v3, mIsWeatherDateAvailable:Z
    :goto_0
    if-nez v3, :cond_1

    .line 303
    :goto_1
    return-void

    .end local v3           #mIsWeatherDateAvailable:Z
    :cond_0
    move v3, v5

    .line 282
    goto :goto_0

    .line 286
    .restart local v3       #mIsWeatherDateAvailable:Z
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_icon_num"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 288
    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isAccuWeatherEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 289
    iget-object v6, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_loc_code"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, cityId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 291
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "cityId:"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v4, token:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/camera/Weather;->mCityId:J

    .line 297
    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #token:Ljava/util/StringTokenizer;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Weather Data : iconNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v6, p0, Lcom/sec/android/app/camera/Weather;->mContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_autorefresh_interval"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 299
    .local v1, interval:I
    if-nez v1, :cond_3

    .line 300
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 302
    :cond_3
    iget v5, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Weather;->setContextualWeather(I)V

    goto :goto_1
.end method
