.class Lcom/sec/internal/ims/imsservice/SettingsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/imsservice/SettingsProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/SettingsProvider;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/imsservice/SettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "iccState":Ljava/lang/String;
    const-string v4, "LOADED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 179
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "operator":Ljava/lang/String;
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->getPreviousOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const-string v4, "ImsSettingsProvider"

    const-string v5, "new SIM detected. Reload settings."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->reset()V

    .line 184
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->load()V

    .line 186
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/imsservice/SettingsProvider;

    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mUserConfigStorage:Lcom/sec/internal/ims/imsservice/UserConfigStorage;
    invoke-static {v4}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$100(Lcom/sec/internal/ims/imsservice/SettingsProvider;)Lcom/sec/internal/ims/imsservice/UserConfigStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/UserConfigStorage;->reset()V

    .line 188
    :cond_0
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$200()Lcom/sec/internal/ims/imsservice/NvStorage;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-static {v2}, Lcom/sec/internal/ims/util/Mno;->fromPlmn(Ljava/lang/String;)Lcom/sec/internal/ims/util/Mno;

    move-result-object v1

    .line 190
    .local v1, "mno":Lcom/sec/internal/ims/util/Mno;
    if-eqz v1, :cond_1

    .line 191
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$200()Lcom/sec/internal/ims/imsservice/NvStorage;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/Mno;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/imsservice/NvStorage;->setNvFile(Ljava/lang/String;)V

    .line 201
    .end local v0    # "iccState":Ljava/lang/String;
    .end local v1    # "mno":Lcom/sec/internal/ims/util/Mno;
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 194
    .restart local v0    # "iccState":Ljava/lang/String;
    :cond_2
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    # getter for: Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->load()V

    goto :goto_0
.end method
