.class public Lorg/ifaa/android/manager/IFAAManagerImpl;
.super Lorg/ifaa/android/manager/IFAAManagerV2;
.source "IFAAManagerImpl.java"


# static fields
.field private static CODE_PROCESS_CMD:I

.field private static DEBUG:Z

.field private static IFAA_TYPE_FINGER:I

.field private static IFAA_TYPE_IRIS:I

.field private static volatile INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

.field private static INTERFACE_DESCRIPTOR:Ljava/lang/String;

.field private static SERVICE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mFingerActName:Ljava/lang/String;

.field private static mFingerPackName:Ljava/lang/String;

.field private static sStrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevModel:Ljava/lang/String;

.field private mService:Landroid/os/IHwBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    const-string/jumbo v0, "IfaaManagerImpl"

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    .line 25
    sput-boolean v1, Lorg/ifaa/android/manager/IFAAManagerImpl;->DEBUG:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    .line 28
    sput v1, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_IRIS:I

    .line 30
    sput v1, Lorg/ifaa/android/manager/IFAAManagerImpl;->CODE_PROCESS_CMD:I

    .line 31
    const-string/jumbo v0, "com.android.settings"

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerPackName:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "com.android.settings.NewFingerprintActivity"

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerActName:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "vendor.xiaomi.hardware.mlipay@1.0::IMlipayService"

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "vendor.xiaomi.hardware.mlipay@1.0::IMlipayService"

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV2;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static getInstance()Lorg/ifaa/android/manager/IFAAManagerV2;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lorg/ifaa/android/manager/IFAAManagerImpl;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 46
    :cond_1
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->sStrMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 84
    const-string/jumbo v1, "finger_alipay_ifaa_model"

    invoke-static {v1}, Lorg/ifaa/android/manager/IFAAManagerImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "miuiFeature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 91
    .end local v0    # "miuiFeature":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v1, Lorg/ifaa/android/manager/IFAAManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceModel devcieModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-object v1

    .line 88
    .restart local v0    # "miuiFeature":Ljava/lang/String;
    :cond_3
    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v2, "persist.sys.ifaa"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "ifaaProp":I
    sget v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    sget v3, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_IRIS:I

    or-int/2addr v2, v3

    and-int v1, v0, v2

    .line 55
    .local v1, "res":I
    sget-boolean v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSupportBIOTypes return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return v1
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 100
    sget-boolean v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVersion sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IfaaVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->mIfaaVer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    sget v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mIfaaVer:I

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    const/4 v11, 0x0

    .line 105
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 107
    .local v2, "hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v8, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IHwBinder;

    if-nez v8, :cond_0

    .line 108
    sget-object v8, Lorg/ifaa/android/manager/IFAAManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    const-string/jumbo v9, "default"

    invoke-static {v8, v9}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v8

    iput-object v8, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IHwBinder;

    .line 110
    :cond_0
    iget-object v8, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IHwBinder;

    if-eqz v8, :cond_2

    .line 111
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 112
    .local v3, "hidl_request":Landroid/os/HwParcel;
    sget-object v8, Lorg/ifaa/android/manager/IFAAManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/os/HwBlob;->wrapArray([B)[Ljava/lang/Byte;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v6, "sbuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v3, v6}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 115
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 116
    iget-object v8, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IHwBinder;

    sget v9, Lorg/ifaa/android/manager/IFAAManagerImpl;->CODE_PROCESS_CMD:I

    const/4 v10, 0x0

    invoke-interface {v8, v9, v3, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 117
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 118
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 119
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v7

    .line 120
    .local v7, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 121
    .local v5, "n":I
    new-array v0, v5, [B

    .line 122
    .local v0, "array":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 123
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 125
    return-object v0

    .line 130
    .end local v0    # "array":[B
    .end local v3    # "hidl_request":Landroid/os/HwParcel;
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "sbuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v7    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_2
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 132
    :goto_1
    sget-object v8, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "processCmdV2, return null"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v11

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v8, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "transact failed. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_1

    .line 129
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    .line 130
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 129
    throw v8
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 68
    .local v1, "res":I
    sget v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    if-ne v2, p2, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerPackName:Ljava/lang/String;

    sget-object v3, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerActName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    const/4 v1, 0x0

    .line 75
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-boolean v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBIOManager authType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    return v1
.end method
