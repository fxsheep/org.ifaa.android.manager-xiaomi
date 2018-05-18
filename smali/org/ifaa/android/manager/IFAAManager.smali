.class public abstract Lorg/ifaa/android/manager/IFAAManager;
.super Ljava/lang/Object;
.source "IFAAManager.java"


# static fields
.field public static final IFAA_VERSION_V2:I = 0x2

.field static mIfaaVer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lorg/ifaa/android/manager/IFAAManager;->mIfaaVer:I

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 16
    const/4 v0, 0x2

    sput v0, Lorg/ifaa/android/manager/IFAAManager;->mIfaaVer:I

    .line 9
    :goto_0
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "teeclientjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract getVersion()I
.end method

.method public native processCmd(Landroid/content/Context;[B)[B
.end method

.method public abstract startBIOManager(Landroid/content/Context;I)I
.end method
