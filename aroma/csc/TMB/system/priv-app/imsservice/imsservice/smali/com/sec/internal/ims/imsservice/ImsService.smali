.class public Lcom/sec/internal/ims/imsservice/ImsService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "ImsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_NAME:Ljava/lang/String; = "ims6"

.field private static final SERVICE_STARTED_PROP:Ljava/lang/String; = "sys.ims.service_started"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 33
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate(): "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v1, "ims6"

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 37
    const-string v1, "sys.ims.service_started"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    .local v0, "isRestart":Z
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate(): restarted!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.ims.imsmanager.RESTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/imsservice/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    :cond_0
    const-string v1, "sys.ims.service_started"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onDestroy()V

    .line 60
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 47
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand(): Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->handleIntent(Landroid/content/Intent;II)V

    .line 53
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
