.class public Lcom/sec/internal/ims/imsservice/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CSC_PROFILE:I = 0x7

.field private static final CSC_PROFILE_ID:I = 0x8

.field private static final CSC_SETTING:I = 0x9

.field private static final CSC_SETTING_ID:I = 0xa

.field private static final DNS_BLOCK:I = 0x14

.field protected static final GCF_CONFIG_ENABLE:Ljava/lang/String; = "GCF_CONFIG_ENABLE"

.field private static final GCF_CONFIG_NAME:I = 0x13

.field private static final IMPU:I = 0x11

.field private static final IMS_GLOBAL:I = 0x4

.field private static final IMS_GLOBAL_ID:I = 0x5

.field private static final IMS_GLOBAL_RESET:I = 0x6

.field private static final IMS_PROFILE:I = 0x1

.field private static final IMS_PROFILE_ID:I = 0x2

.field private static final IMS_PROFILE_RESET:I = 0x3

.field private static final IMS_SWITCH_NAME:I = 0xb

.field private static final IMS_SWITCH_RESET:I = 0xc

.field private static final INTENT_ACTION_SIM_ICCID_CHANGED:Ljava/lang/String; = "com.android.action.SIM_ICCID_CHANGED"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsSettingsProvider"

.field private static final NV_STORAGE:I = 0xf

.field private static final PROFILE_MATCHER:I = 0x0

.field private static final SELF_PROVISIONING:I = 0x12

.field private static final SIM_DATA:I = 0xe

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final USER_CONFIG:I = 0x10

.field private static mImsProfileIdTableFieldNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mImsProfileIdTableMap:Ljava/util/HashMap;
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

.field private static mImsProfileTableFieldNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mImsProfileTableMap:Ljava/util/HashMap;
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

.field private static mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

.field private static mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

.field private mUserConfigStorage:Lcom/sec/internal/ims/imsservice/UserConfigStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    .line 74
    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

    .line 76
    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;

    .line 77
    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;

    .line 78
    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableFieldNameSet:Ljava/util/Set;

    .line 79
    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableFieldNameSet:Ljava/util/Set;

    .line 109
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 111
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "match_profile_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "profile"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "profile/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "profile/reset"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "global"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "global/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "global/reset"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "cscprofile"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "cscprofile/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "cscsetting"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "cscsetting/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "imsswitch/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "imsswitchreset"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "simdata"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "nvstorage/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "userconfig"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "impu"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "selfprovisioning"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "gcfconfig"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "dnsblock"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 134
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 741
    return-void
.end method

.method static synthetic access$000()Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/imsservice/SettingsProvider;)Lcom/sec/internal/ims/imsservice/UserConfigStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SettingsProvider;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mUserConfigStorage:Lcom/sec/internal/ims/imsservice/UserConfigStorage;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sec/internal/ims/imsservice/NvStorage;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableFieldNameSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableFieldNameSet:Ljava/util/Set;

    return-object v0
.end method

.method private getSearchWithSalesCode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "profile_searching"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 692
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v2, "profile_searching"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    :cond_0
    const-string v2, "ImsSettingsProvider"

    const-string v3, "getSearchWithSalesCode null == prefs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return v1

    :cond_1
    const-string v2, "search_with_salescode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private queryGcfConfig()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 652
    invoke-static {}, Lcom/sec/internal/ims/config/Util;->getGcfPref()Ljava/lang/Boolean;

    move-result-object v1

    .line 653
    .local v1, "isGcfEnabled":Ljava/lang/Boolean;
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 654
    .local v0, "c":Landroid/database/MatrixCursor;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GCF_CONFIG_ENABLE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 655
    return-object v0
.end method

.method private queryImsSwitch(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 659
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 661
    .local v0, "c":Landroid/database/MatrixCursor;
    const-string v4, "ImsSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryImsSwitch: name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    move-result-object v1

    .line 665
    .local v1, "is":Lcom/sec/internal/ims/settings/ImsServiceSwitch;
    const-string v4, "volte"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isVoLteEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 685
    :goto_0
    return-object v0

    .line 669
    :cond_1
    const-string v4, "rcs"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 670
    const-string v4, "ImsSettingsProvider"

    const-string v5, "queryImsSwitch: rcs"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isRcsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_3
    const-string v4, "ipme"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 675
    const-string v4, "ImsSettingsProvider"

    const-string v5, "queryImsSwitch: ipme"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isIpmeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 680
    :cond_5
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private restoreDefaultImsProfile()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 627
    const-string v2, "match_profile_id"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    const-string v2, "profile"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 629
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    const-string v3, "/system/csc/imsprofile.xml"

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->initImsProfiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "ImsSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSearchWithSalesCode(Z)V
    .locals 5
    .param p1, "searchWithSalesCode"    # Z

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "profile_searching"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 703
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 704
    const-string v2, "ImsSettingsProvider"

    const-string v3, "setSearchWithSalesCode null == prefs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "search_with_salescode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setServicesControl(Lcom/sec/internal/ims/settings/ImsServiceSwitch;Landroid/content/ContentValues;)V
    .locals 12
    .param p1, "is"    # Lcom/sec/internal/ims/settings/ImsServiceSwitch;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 714
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v5, "serviceSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v9, "enabled"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "enabled="

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "service":Ljava/lang/String;
    :try_start_0
    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 719
    .local v6, "splitService":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v8, v0, v2

    .line 721
    .local v8, "splitedService":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 722
    .local v7, "splitServiceName":[Ljava/lang/String;
    const-string v9, "1"

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 723
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 725
    :cond_0
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 729
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "splitService":[Ljava/lang/String;
    .end local v7    # "splitServiceName":[Ljava/lang/String;
    .end local v8    # "splitedService":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v9, "ImsSettingsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NullPointerException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    return-void

    .line 728
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "splitService":[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enable(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private updateDnsBlock(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    const-string v1, "DNS_BLOCK_ENABLE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 647
    .local v0, "isDnsBlockEnabled":Z
    const-string v2, "net.tether.always"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v0    # "isDnsBlockEnabled":Z
    :cond_0
    return-void

    .line 647
    .restart local v0    # "isDnsBlockEnabled":Z
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private updateGcfConfig(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 634
    const-string v1, "GCF_CONFIG_ENABLE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 635
    .local v0, "isGcfEnabled":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/config/Util;->setGcfPref(Ljava/lang/Boolean;)V

    .line 637
    sget-object v1, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->reset()V

    .line 638
    sget-object v1, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->load()V

    .line 640
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->restoreDefaultImsProfile()Z

    .line 642
    .end local v0    # "isGcfEnabled":Z
    :cond_0
    return-void
.end method

.method private updateProvisioningProperty(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 736
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 737
    .local v0, "status":Z
    const-string v1, "ImsSettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProvisioningProperty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "allow_volte_provisioning"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    return-void

    .line 738
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "arg0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 605
    const/4 v0, 0x0

    .line 607
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 612
    const-string v2, "importIMSProfile"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v2, v0, p2}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->initImsProfiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 615
    :cond_0
    :goto_0
    return-object v5

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "ImsSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, "count":I
    const-string v4, "ImsSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v4, "ImsSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 426
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "ImsSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteDiskIOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    .line 429
    .end local v2    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_0
    return v0

    .line 398
    .restart local v0    # "count":I
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "where":Ljava/lang/String;
    const-string v4, "match_profile_id"

    invoke-virtual {v1, v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 400
    goto :goto_0

    .line 402
    .end local v3    # "where":Ljava/lang/String;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3    # "where":Ljava/lang/String;
    const-string v4, "profile"

    invoke-virtual {v1, v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 404
    goto :goto_0

    .line 406
    .end local v3    # "where":Ljava/lang/String;
    :pswitch_3
    const-string v4, "ImsSettingsProvider"

    const-string v5, "delete: not supported."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    .restart local v3    # "where":Ljava/lang/String;
    const-string v4, "cscprofile"

    invoke-virtual {v1, v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 411
    goto :goto_0

    .line 413
    .end local v3    # "where":Ljava/lang/String;
    :pswitch_5
    const-string v4, "cscsetting"

    invoke-virtual {v1, v4, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 414
    goto :goto_0

    .line 416
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .restart local v3    # "where":Ljava/lang/String;
    const-string v4, "cscsetting"

    invoke-virtual {v1, v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 418
    goto/16 :goto_0

    .line 420
    .end local v3    # "where":Ljava/lang/String;
    :pswitch_7
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/imsservice/NvStorage;->delete(Ljava/lang/String;)I

    move-result v0

    .line 421
    goto/16 :goto_0

    .line 423
    :pswitch_8
    const-string v4, "impu"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 424
    goto/16 :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    const-wide/16 v2, 0x0

    .line 343
    .local v2, "id":J
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 373
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 337
    .end local v2    # "id":J
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteDiskIOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_0
    return-object v4

    .line 348
    .restart local v2    # "id":J
    :pswitch_1
    const-string v5, "match_profile_id"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 376
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 378
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 351
    :pswitch_2
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableFieldNameSet:Ljava/util/Set;

    invoke-static {v5, p2}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->removeNotExistField(Ljava/util/Set;Landroid/content/ContentValues;)V

    .line 352
    const-string v5, "profile"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 353
    goto :goto_1

    .line 355
    :pswitch_3
    const-string v5, "ImsSettingsProvider"

    const-string v6, "insert: not supported."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :pswitch_4
    const-string v5, "cscprofile"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 359
    goto :goto_1

    .line 361
    :pswitch_5
    const-string v5, "cscsetting"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 362
    goto :goto_1

    .line 364
    :pswitch_6
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/sec/internal/ims/imsservice/NvStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 367
    :pswitch_7
    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mUserConfigStorage:Lcom/sec/internal/ims/imsservice/UserConfigStorage;

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/imsservice/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 370
    :pswitch_8
    const-string v5, "impu"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 371
    goto :goto_1

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 139
    const-string v4, "ImsSettingsProvider"

    const-string v5, "Starting ImsSettingsProvider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;

    .line 141
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileIdTableFieldNameSet:Ljava/util/Set;

    .line 144
    :cond_0
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$ProfileTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;

    .line 145
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableFieldNameSet:Ljava/util/Set;

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "mno":Lcom/sec/internal/ims/util/Mno;
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->getPreviousOperator()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "operator":Ljava/lang/String;
    const-string v4, "ImsSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviousOperator(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    invoke-static {v0}, Lcom/sec/internal/ims/util/Mno;->fromSim(Landroid/content/Context;)Lcom/sec/internal/ims/util/Mno;

    move-result-object v1

    .line 165
    :cond_2
    :goto_0
    new-instance v4, Lcom/sec/internal/ims/imsservice/NvStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/Mno;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/sec/internal/ims/imsservice/NvStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

    .line 167
    new-instance v4, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-direct {v4, v0}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    .line 169
    new-instance v4, Lcom/sec/internal/ims/imsservice/UserConfigStorage;

    invoke-direct {v4, v0}, Lcom/sec/internal/ims/imsservice/UserConfigStorage;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mUserConfigStorage:Lcom/sec/internal/ims/imsservice/UserConfigStorage;

    .line 171
    new-instance v4, Lcom/sec/internal/ims/imsservice/SettingsProvider$1;

    invoke-direct {v4, p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider$1;-><init>(Lcom/sec/internal/ims/imsservice/SettingsProvider;)V

    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->getDbCreatState(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;

    if-ne v4, v5, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->restoreDefaultImsProfile()Z

    move-result v3

    .line 206
    .local v3, "profileCreated":Z
    if-eqz v3, :cond_3

    .line 207
    invoke-static {v0, v7}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->setDbCreated(Landroid/content/Context;Z)V

    .line 210
    .end local v3    # "profileCreated":Z
    :cond_3
    return v7

    .line 160
    :cond_4
    invoke-static {v2}, Lcom/sec/internal/ims/util/Mno;->fromPlmn(Ljava/lang/String;)Lcom/sec/internal/ims/util/Mno;

    move-result-object v1

    .line 161
    if-nez v1, :cond_2

    .line 162
    invoke-static {v0}, Lcom/sec/internal/ims/util/Mno;->fromSim(Landroid/content/Context;)Lcom/sec/internal/ims/util/Mno;

    move-result-object v1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 225
    .local v3, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 226
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query Uri["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], selection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 319
    :pswitch_0
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 233
    :pswitch_1
    const/4 v8, 0x0

    .line 234
    .local v8, "groupBy":Ljava/lang/String;
    const-string v5, "match_profile_id"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 235
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, p4, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object v5, p4, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, p4, v5

    const-string v6, "GROUP BY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    const/4 v5, 0x1

    aget-object v8, p4, v5

    .line 239
    const/16 p4, 0x0

    .line 242
    :cond_0
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 324
    .end local v8    # "groupBy":Ljava/lang/String;
    :goto_0
    return-object v17

    .line 245
    :pswitch_2
    const-string v5, "profile"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 251
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    const-string v18, ""

    .line 253
    .local v18, "query":Ljava/lang/String;
    const-string v5, "="

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, "token":Ljava/lang/String;
    const-string v5, "ImsSettingsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImsProfile query with  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v5, "mdmn_type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT profile.* FROM profile WHERE profile.mdmn_type=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 262
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 264
    .local v17, "c":Landroid/database/Cursor;
    goto :goto_0

    .line 259
    .end local v17    # "c":Landroid/database/Cursor;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT profile.* FROM profile JOIN match_profile_id ON profile.id=match_profile_id.profile_id WHERE match_profile_id.mccmnc=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 271
    .end local v18    # "query":Ljava/lang/String;
    .end local v19    # "token":Ljava/lang/String;
    :pswitch_3
    const-string v5, "profile"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 322
    :cond_2
    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 324
    .restart local v17    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 276
    .end local v17    # "c":Landroid/database/Cursor;
    :pswitch_4
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 279
    :pswitch_5
    const-string v5, "global"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 284
    :pswitch_6
    const-string v5, "cscprofile"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :pswitch_7
    const-string v5, "cscprofile"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 293
    :pswitch_8
    const-string v5, "cscsetting"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :pswitch_9
    const-string v5, "cscsetting"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 302
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->queryImsSwitch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 305
    :pswitch_b
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mNvStorage:Lcom/sec/internal/ims/imsservice/NvStorage;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/sec/internal/ims/imsservice/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 309
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mUserConfigStorage:Lcom/sec/internal/ims/imsservice/UserConfigStorage;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/imsservice/UserConfigStorage;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 312
    :pswitch_d
    const-string v5, "impu"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 316
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->queryGcfConfig()Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 434
    const/4 v6, 0x0

    .line 436
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mDbHelper:Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;

    invoke-virtual {v15}, Lcom/sec/internal/ims/imsservice/SettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 442
    const/4 v5, 0x0

    .line 444
    .local v5, "count":I
    const-string v15, "ImsSettingsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v15, "ImsSettingsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "match "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object v15, Lcom/sec/internal/ims/imsservice/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 595
    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 437
    .end local v5    # "count":I
    :catch_0
    move-exception v7

    .line 438
    .local v7, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v15, "ImsSettingsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SQLiteDiskIOException : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v5, 0x0

    .line 600
    .end local v7    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_0
    :goto_0
    return v5

    .line 449
    .restart local v5    # "count":I
    :pswitch_1
    const-string v15, "match_profile_id"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 598
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 453
    :pswitch_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 454
    .local v14, "where":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 455
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AND ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 458
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/internal/ims/util/Mno;->fromSim(Landroid/content/Context;)Lcom/sec/internal/ims/util/Mno;

    move-result-object v11

    .line 459
    .local v11, "mno":Lcom/sec/internal/ims/util/Mno;
    const/4 v9, 0x0

    .line 460
    .local v9, "extendedPublishTimer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 461
    .local v3, "badEventExpiry":Ljava/lang/String;
    sget-object v15, Lcom/sec/internal/ims/util/Mno;->ATT:Lcom/sec/internal/ims/util/Mno;

    if-ne v11, v15, :cond_4

    .line 466
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "select extended_publish_timer from profile where id=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 467
    .local v13, "query":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 468
    .local v4, "c":Landroid/database/Cursor;
    if-eqz v4, :cond_3

    .line 469
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const/4 v15, 0x0

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 471
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "select bad_event_expiry from profile where id=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 474
    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 475
    if-eqz v4, :cond_4

    .line 476
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 477
    const/4 v15, 0x0

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 482
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v13    # "query":Ljava/lang/String;
    :cond_4
    sget-object v15, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mImsProfileTableFieldNameSet:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->removeNotExistField(Ljava/util/Set;Landroid/content/ContentValues;)V

    .line 483
    const-string v15, "profile"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v15, v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 485
    sget-object v15, Lcom/sec/internal/ims/util/Mno;->ATT:Lcom/sec/internal/ims/util/Mno;

    if-ne v11, v15, :cond_1

    .line 489
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "extended_publish_timer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 496
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "bad_event_expiry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    goto/16 :goto_0

    .line 505
    .end local v3    # "badEventExpiry":Ljava/lang/String;
    .end local v9    # "extendedPublishTimer":Ljava/lang/String;
    .end local v11    # "mno":Lcom/sec/internal/ims/util/Mno;
    .end local v14    # "where":Ljava/lang/String;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->restoreDefaultImsProfile()Z

    goto/16 :goto_1

    .line 510
    :pswitch_4
    sget-object v15, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->update(Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 514
    :pswitch_5
    const-string v15, "ImsSettingsProvider"

    const-string v16, "update: reset."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v15, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    invoke-virtual {v15}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->reset()V

    .line 516
    sget-object v15, Lcom/sec/internal/ims/imsservice/SettingsProvider;->mRepo:Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;

    invoke-virtual {v15}, Lcom/sec/internal/ims/imsservice/GlobalSettingsRepository;->load()V

    goto/16 :goto_1

    .line 520
    :pswitch_6
    const-string v15, "cscprofile"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 521
    goto/16 :goto_1

    .line 524
    :pswitch_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 525
    .restart local v14    # "where":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 526
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AND ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 528
    :cond_6
    const-string v15, "cscprofile"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v15, v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 529
    goto/16 :goto_1

    .line 532
    .end local v14    # "where":Ljava/lang/String;
    :pswitch_8
    const-string v15, "cscsetting"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 533
    goto/16 :goto_1

    .line 536
    :pswitch_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 537
    .restart local v14    # "where":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 538
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AND ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 540
    :cond_7
    const-string v15, "cscsetting"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v15, v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 541
    goto/16 :goto_1

    .line 544
    .end local v14    # "where":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    move-result-object v10

    .line 545
    .local v10, "is":Lcom/sec/internal/ims/settings/ImsServiceSwitch;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 547
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    if-nez p2, :cond_9

    .line 548
    :cond_8
    const-string v15, "ImsSettingsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 549
    :cond_9
    const-string v15, "config"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->setServicesControl(Lcom/sec/internal/ims/settings/ImsServiceSwitch;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 552
    :cond_a
    const-string v15, "ImsSettingsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "enabled"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v15, "enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const/4 v8, 0x1

    .line 557
    .local v8, "enabled":Z
    :goto_3
    const-string v15, "volte"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 558
    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableVoLte(Z)V

    goto :goto_2

    .line 555
    .end local v8    # "enabled":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    .line 559
    .restart local v8    # "enabled":Z
    :cond_c
    const-string v15, "rcs"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 560
    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableRcs(Z)V

    goto :goto_2

    .line 562
    :cond_d
    invoke-virtual {v10, v12, v8}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enable(Ljava/lang/String;Z)V

    goto :goto_2

    .line 569
    .end local v8    # "enabled":Z
    .end local v10    # "is":Lcom/sec/internal/ims/settings/ImsServiceSwitch;
    .end local v12    # "name":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    move-result-object v10

    .line 570
    .restart local v10    # "is":Lcom/sec/internal/ims/settings/ImsServiceSwitch;
    invoke-virtual {v10}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->doInit()V

    goto/16 :goto_1

    .line 574
    .end local v10    # "is":Lcom/sec/internal/ims/settings/ImsServiceSwitch;
    :pswitch_c
    const-string v15, "ImsSettingsProvider"

    const-string v16, "update: not supported in NV_STORAGE. use insert"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 578
    :pswitch_d
    const-string v15, "impu"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 580
    goto/16 :goto_1

    .line 583
    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->updateProvisioningProperty(Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 587
    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->updateGcfConfig(Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 591
    :pswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/imsservice/SettingsProvider;->updateDnsBlock(Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
