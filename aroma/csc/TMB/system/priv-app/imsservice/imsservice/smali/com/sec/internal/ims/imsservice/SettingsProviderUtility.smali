.class public Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;
.super Ljava/lang/Object;
.source "SettingsProviderUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_VESION_PATH:Ljava/lang/String; = "/efs/sec_efs/ims_config_file_version"

.field public static final CSC_GLOBALSETTING_XML:Ljava/lang/String; = "/system/csc/globalsettings.xml"

.field public static final CSC_IMSPROFILE_XML:Ljava/lang/String; = "/system/csc/imsprofile.xml"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final XML_TAG_CONFIG_FILE:Ljava/lang/String; = "config_file"

.field private static mOldBackupFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrevJoynEnable:I

.field private static mTmpSalesCodeMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-class v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    .line 59
    const/4 v0, -0x2

    sput v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mPrevJoynEnable:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "TMB"

    const-string v2, "TMO-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "VZW"

    const-string v2, "VZW-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSP"

    const-string v2, "XSP-SIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "SIN"

    const-string v2, "SIN-SIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "STH"

    const-string v2, "STH-SIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "MM1"

    const-string v2, "MM1-SIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "VIA"

    const-string v2, "TELEFONICA-GER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "VD2"

    const-string v2, "VODA-GER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "CHM"

    const-string v2, "CMCC-CHINA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "CTC"

    const-string v2, "CTC-CHINA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "NEE"

    const-string v2, "TELE2-SWE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "FTM"

    const-string v2, "ORANGE-FTM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "VOD"

    const-string v2, "VODAFONE-UK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "ATL"

    const-string v2, "VODAFONE-ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "OMN"

    const-string v2, "VODAFONE-IT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XFV"

    const-string v2, "VODACOM-SOUTHAFRICA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "VIVA-Kuwait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "PHN"

    const-string v2, "TELE2-NED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "CPW"

    const-string v2, "EUR-GCF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "DTM"

    const-string v2, "OPEN-TMOBILE-GER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "DTR"

    const-string v2, "OPEN-TMOBILE-GER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "TMZ"

    const-string v2, "OPEN-TMOBILE-CZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "DCZ"

    const-string v2, "OPEN-TMOBILE-CZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "SWC"

    const-string v2, "SWISSCOM-SWISS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "Etisalat-UAE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "DU-UAE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "Zain-Kuwait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "Ooredoo-Kuwait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "MOB"

    const-string v2, "A1-Austria"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "NEE"

    const-string v2, "Telenor-DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "OPS"

    const-string v2, "OPS-AUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "SFR"

    const-string v2, "VODAFONE-FRANCE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "KSA"

    const-string v2, "STC-MEA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "KSA"

    const-string v2, "MOBILY-MEA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "EVR"

    const-string v2, "ee-uk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "VNZ"

    const-string v2, "VNZ-NZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "VAU"

    const-string v2, "VAU-AUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "TEL"

    const-string v2, "TEL-AUS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "SMILE-TNZ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "SMILE-UGN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "XSG"

    const-string v2, "SMILE-NGR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "NEE"

    const-string v2, "TDC-DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "PRO"

    const-string v2, "PROXIMUS-BELGIUM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "BMC"

    const-string v2, "CANADA-BMC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    const-string v1, "TMK"

    const-string v2, "MetroPCS-TMK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    .line 120
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    const-string v1, "/efs/ims_setting/ims_setting_bak.dat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    const-string v1, "/efs/ims_setting/ims_setting.dat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static deleteOldBackupFile()V
    .locals 8

    .prologue
    .line 125
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 126
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 127
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 133
    .local v0, "delFlag":Z
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteOldBackupFile. oldBackupFileList ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v0    # "delFlag":Z
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getDbCreatState(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 139
    const-string v1, "pref_setting_db"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v1, "setting_db_created"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;->DB_NEVER_CREATED:Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;

    .line 144
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "setting_db_created"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATED:Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/imsservice/SettingsProviderUtility$DB_CREAT_STATE;

    goto :goto_0
.end method

.method private static getSimInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 31
    .param p0, "fieldMccMnc"    # Ljava/lang/String;
    .param p1, "salesCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const-string v29, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "arrFieldMccMnc":[Ljava/lang/String;
    const-string v17, ""

    .line 541
    .local v17, "keptPrevStr":Ljava/lang/String;
    move-object v3, v5

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    move v15, v14

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v18    # "len$":I
    .local v15, "i$":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_d

    aget-object v9, v3, v15

    .line 542
    .local v9, "eachField":Ljava/lang/String;
    const-string v29, ":"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 543
    .local v11, "fieldsSalseCode":[Ljava/lang/String;
    const-string v25, ""

    .line 544
    .local v25, "operatorField":Ljava/lang/String;
    const-string v24, ""

    .line 545
    .local v24, "operator":Ljava/lang/String;
    const-string v23, "-1"

    .line 546
    .local v23, "opCodeStart":Ljava/lang/String;
    const-string v21, "-1"

    .line 547
    .local v21, "opCodeEnd":Ljava/lang/String;
    const-string v8, ""

    .line 548
    .local v8, "currentSalesCodeOnly":Ljava/lang/String;
    const/4 v7, 0x0

    .line 550
    .local v7, "bCurrentSalesCodeOnly":Z
    array-length v0, v11

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 551
    const/4 v12, 0x0

    .line 552
    .local v12, "hasSalesCode":Z
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_0

    .line 553
    aget-object v29, v11, v13

    if-eqz v29, :cond_1

    aget-object v29, v11, v13

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 554
    const/4 v12, 0x1

    .line 558
    :cond_0
    if-nez v12, :cond_2

    .line 541
    .end local v12    # "hasSalesCode":Z
    .end local v13    # "i":I
    .end local v15    # "i$":I
    :goto_2
    add-int/lit8 v14, v15, 0x1

    .restart local v14    # "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .restart local v15    # "i$":I
    goto :goto_0

    .line 552
    .restart local v12    # "hasSalesCode":Z
    .restart local v13    # "i":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 561
    :cond_2
    move v7, v12

    .line 563
    .end local v12    # "hasSalesCode":Z
    .end local v13    # "i":I
    :cond_3
    if-eqz v7, :cond_4

    .line 564
    const-string v8, "O"

    .line 567
    :cond_4
    const/16 v29, 0x0

    aget-object v25, v11, v29

    .line 568
    const-string v29, "["

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, "]"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 569
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 570
    goto :goto_2

    .line 573
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "]"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 574
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 575
    goto :goto_2

    .line 577
    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_7

    .line 578
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 581
    :cond_7
    const-string v29, "["

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string v29, "]"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 582
    const-string v29, "["

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 583
    .local v26, "startIndex":I
    const-string v29, "]"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 584
    .local v10, "endIndex":I
    add-int/lit8 v29, v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 585
    .local v22, "opCodeField":Ljava/lang/String;
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 586
    const-string v29, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 587
    .local v6, "arrOpCode":[Ljava/lang/String;
    move-object v4, v6

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v14, 0x0

    .end local v15    # "i$":I
    .restart local v14    # "i$":I
    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_c

    aget-object v27, v4, v14

    .line 588
    .local v27, "strOpCode":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 589
    const-string v29, "-"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 590
    .local v16, "indexBetween":I
    const/16 v29, -0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    .line 591
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 592
    const-string v29, "-"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 593
    add-int/lit8 v29, v16, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 602
    :goto_4
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v24, v28, v29

    const/16 v29, 0x1

    aput-object v23, v28, v29

    const/16 v29, 0x2

    aput-object v21, v28, v29

    const/16 v29, 0x3

    aput-object v8, v28, v29

    .line 605
    .local v28, "values":[Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v16    # "indexBetween":I
    .end local v28    # "values":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 595
    .restart local v16    # "indexBetween":I
    :cond_9
    move-object/from16 v21, v23

    goto :goto_4

    .line 598
    :cond_a
    move-object/from16 v23, v27

    .line 599
    move-object/from16 v21, v27

    goto :goto_4

    .line 611
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "arrOpCode":[Ljava/lang/String;
    .end local v10    # "endIndex":I
    .end local v14    # "i$":I
    .end local v16    # "indexBetween":I
    .end local v19    # "len$":I
    .end local v22    # "opCodeField":Ljava/lang/String;
    .end local v26    # "startIndex":I
    .end local v27    # "strOpCode":Ljava/lang/String;
    .restart local v15    # "i$":I
    :cond_b
    move-object/from16 v24, v25

    .line 612
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v24, v28, v29

    const/16 v29, 0x1

    aput-object v23, v28, v29

    const/16 v29, 0x2

    aput-object v21, v28, v29

    const/16 v29, 0x3

    aput-object v8, v28, v29

    .line 615
    .restart local v28    # "values":[Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v15    # "i$":I
    .end local v28    # "values":[Ljava/lang/String;
    :cond_c
    const-string v17, ""

    goto/16 :goto_2

    .line 620
    .end local v7    # "bCurrentSalesCodeOnly":Z
    .end local v8    # "currentSalesCodeOnly":Ljava/lang/String;
    .end local v9    # "eachField":Ljava/lang/String;
    .end local v11    # "fieldsSalseCode":[Ljava/lang/String;
    .end local v21    # "opCodeEnd":Ljava/lang/String;
    .end local v23    # "opCodeStart":Ljava/lang/String;
    .end local v24    # "operator":Ljava/lang/String;
    .end local v25    # "operatorField":Ljava/lang/String;
    .restart local v15    # "i$":I
    :cond_d
    return-object v20
.end method

.method public static initImsProfiles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v6, 0x0

    .line 168
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    .line 169
    .local v0, "cscFi":Ljava/io/FileInputStream;
    const-string v7, "/system/csc/imsprofile.xml"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x1

    .line 172
    .local v5, "isImport":Z
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "cscFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 174
    sget-object v7, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initImsProfile: load imsprofile from csc. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 176
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 177
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 179
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v0    # "cscFi":Ljava/io/FileInputStream;
    .local v1, "cscFi":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v6, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 184
    .end local v1    # "cscFi":Ljava/io/FileInputStream;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v0    # "cscFi":Ljava/io/FileInputStream;
    :goto_1
    if-nez v6, :cond_4

    .line 185
    :try_start_2
    sget-object v7, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v8, "R.xml.imsprofile parser null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    const/4 v8, 0x0

    .line 200
    if-eqz v0, :cond_3

    .line 202
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_2
    move v7, v8

    .line 209
    .end local v2    # "cscFile":Ljava/io/File;
    :goto_3
    return v7

    .line 169
    .end local v5    # "isImport":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 182
    .restart local v2    # "cscFile":Ljava/io/File;
    .restart local v5    # "isImport":Z
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    if-eqz v6, :cond_0

    instance-of v7, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 207
    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 189
    :cond_4
    :try_start_5
    const-string v7, "profiles"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 190
    invoke-static {v6}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->isValidProfile(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 191
    sget-object v7, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v8, "ImsProfile in csc is not valid. load default imsProfile from resource"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 194
    :cond_5
    invoke-static {p0, p1, v6, v5}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->loadProfiles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    if-eqz v0, :cond_7

    .line 202
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 209
    :cond_6
    :goto_4
    const/4 v7, 0x1

    goto :goto_3

    .line 203
    :catch_1
    move-exception v3

    .line 204
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    if-eqz v6, :cond_6

    instance-of v7, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_6

    move-object v7, v6

    .line 207
    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    .line 195
    .end local v2    # "cscFile":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 196
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v7, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Got exception while loading ImsProfile configuration. "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    const/4 v8, 0x0

    .line 200
    if-eqz v0, :cond_9

    .line 202
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    move v7, v8

    .line 207
    goto :goto_3

    .line 203
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 204
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 206
    .local v3, "e":Ljava/lang/Exception;
    :cond_9
    if-eqz v6, :cond_8

    instance-of v7, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_8

    move-object v7, v6

    .line 207
    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_6

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v0, :cond_b

    .line 202
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 207
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    :goto_8
    throw v7

    .line 203
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v3

    .line 204
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    :cond_b
    if-eqz v6, :cond_a

    instance-of v8, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v8, :cond_a

    .line 207
    check-cast v6, Landroid/content/res/XmlResourceParser;

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_8

    .line 200
    .end local v0    # "cscFi":Ljava/io/FileInputStream;
    .restart local v1    # "cscFi":Ljava/io/FileInputStream;
    .restart local v2    # "cscFile":Ljava/io/File;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "cscFi":Ljava/io/FileInputStream;
    .restart local v0    # "cscFi":Ljava/io/FileInputStream;
    goto :goto_7

    .line 195
    .end local v0    # "cscFi":Ljava/io/FileInputStream;
    .restart local v1    # "cscFi":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFi":Ljava/io/FileInputStream;
    .restart local v0    # "cscFi":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private static isValidProfile(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 214
    :try_start_0
    const-string v3, ""

    .local v3, "versionFromProfile":Ljava/lang/String;
    const-string v2, ""

    .line 216
    .local v2, "versionFromCsc":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 217
    .local v0, "csc":Lcom/sec/android/app/CscFeature;
    const-string v4, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const/4 v4, 0x0

    const-string v5, "profile_version"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    sget-object v4, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Csc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    const/4 v4, 0x1

    .line 230
    .end local v0    # "csc":Lcom/sec/android/app/CscFeature;
    .end local v2    # "versionFromCsc":Ljava/lang/String;
    .end local v3    # "versionFromProfile":Ljava/lang/String;
    :goto_0
    return v4

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static loadConfigFileFromGlobalSetting(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 11
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "globalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    sget-object v9, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v10, "loadConfigFileFromGlobalSetting start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v5, ""

    .line 631
    .local v5, "name":Ljava/lang/String;
    const-string v7, ""

    .line 632
    .local v7, "value":Ljava/lang/String;
    const-string v1, ""

    .line 633
    .local v1, "filePath":Ljava/lang/String;
    const-string v2, ""

    .line 634
    .local v2, "fileValue":Ljava/lang/String;
    const-string v3, ""

    .line 636
    .local v3, "fileVersion":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/util/OmcCode;->get()Ljava/lang/String;

    move-result-object v6

    .line 639
    .local v6, "salesCode":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "config_file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 640
    :cond_1
    const/4 v1, 0x0

    .line 641
    const/4 v2, 0x0

    .line 642
    const/4 v3, 0x0

    .line 643
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .local v0, "cnt":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 644
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 645
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 646
    const-string v9, "value"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 647
    move-object v2, v7

    .line 649
    :cond_2
    const-string v9, "path"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 650
    move-object v1, v7

    .line 652
    :cond_3
    const-string v9, "version"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 653
    move-object v3, v7

    .line 643
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 657
    :cond_5
    const/4 v8, 0x0

    .line 658
    .local v8, "writeToFile":Z
    sget-object v9, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 660
    const/4 v8, 0x1

    .line 665
    :cond_6
    :goto_2
    if-eqz v8, :cond_0

    .line 666
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 667
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 661
    :cond_7
    const-string v9, "default"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->mTmpSalesCodeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 663
    const/4 v8, 0x1

    goto :goto_2

    .line 673
    .end local v0    # "cnt":I
    .end local v4    # "i":I
    .end local v8    # "writeToFile":Z
    :cond_8
    return-void
.end method

.method public static loadProfiles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 48
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "isImport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/sec/internal/ims/util/OmcCode;->get()Ljava/lang/String;

    move-result-object v32

    .line 236
    .local v32, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/Util;->getGcfPref()Ljava/lang/Boolean;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_0

    .line 237
    sget-object v45, Lcom/sec/internal/ims/util/Mno;->GCF:Lcom/sec/internal/ims/util/Mno;

    invoke-virtual/range {v45 .. v45}, Lcom/sec/internal/ims/util/Mno;->getSalesCode()Ljava/lang/String;

    move-result-object v32

    .line 240
    :cond_0
    const/16 v30, 0x0

    .line 242
    .local v30, "profileId":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v7, "defaultValues":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    :goto_0
    const-string v45, "default"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 247
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .local v6, "cnt":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v6, :cond_1

    .line 248
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 250
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 252
    .end local v6    # "cnt":I
    .end local v17    # "i":I
    :cond_2
    const-string v45, "profiles"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_3

    .line 253
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 255
    :cond_3
    const-string v45, "profile"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_4

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    sget-object v46, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->CONTENT_URI:Landroid/net/Uri;

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    sget-object v46, Lcom/sec/ims/settings/ImsSettings$ProfileTable;->CONTENT_URI:Landroid/net/Uri;

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 475
    return-void

    .line 259
    :cond_4
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v44, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 262
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v29, "pidValues":Landroid/content/ContentValues;
    const/16 v20, 0x0

    .line 266
    .local v20, "mccmncList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 267
    .local v22, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 268
    .local v19, "mccmnc":Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .restart local v6    # "cnt":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    .line 269
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 270
    .local v21, "n":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v43

    .line 272
    .local v43, "v":Ljava/lang/String;
    const-string v45, "name"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_6

    .line 273
    move-object/from16 v22, v43

    .line 268
    :cond_5
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 274
    :cond_6
    const-string v45, "mccmnc"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_e

    .line 275
    move-object/from16 v19, v43

    .line 276
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 277
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "[ImsProfileChecker] loadProfiles : ["

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "] doesn\'t have mccmnc"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v21    # "n":Ljava/lang/String;
    .end local v43    # "v":Ljava/lang/String;
    :cond_7
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "loadProfiles: name="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mccmnc="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 386
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v35, "serviceStringBuilder":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v25, "networkStringBuilder":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v24, "networkEnabledBuilder":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v9, "deregTimeoutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 391
    .local v16, "first":Z
    :goto_4
    const-string v45, "network"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_23

    .line 392
    if-nez v16, :cond_22

    .line 393
    const-string v45, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v45, ","

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v45, ","

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :goto_5
    const/16 v45, 0x0

    const-string v46, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 402
    .local v26, "networkType":Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v45, ":"

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const/16 v45, 0x0

    const-string v46, "services"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const-string v46, ","

    const-string v47, "/"

    invoke-virtual/range {v45 .. v47}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/16 v45, 0x0

    const-string v46, "network_enabled"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 412
    .local v23, "networkEnabled":Ljava/lang/String;
    if-nez v23, :cond_8

    .line 413
    const-string v23, "true"

    .line 415
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v45, ":"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const/16 v45, 0x0

    const-string v46, "dereg_timeout"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "deregTimeout":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 421
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ":"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 282
    .end local v8    # "deregTimeout":Ljava/lang/String;
    .end local v9    # "deregTimeoutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "first":Z
    .end local v23    # "networkEnabled":Ljava/lang/String;
    .end local v24    # "networkEnabledBuilder":Ljava/lang/StringBuilder;
    .end local v25    # "networkStringBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "networkType":Ljava/lang/String;
    .end local v35    # "serviceStringBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "n":Ljava/lang/String;
    .restart local v43    # "v":Ljava/lang/String;
    :cond_a
    if-eqz p3, :cond_d

    .line 283
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v36

    .line 284
    .local v36, "serviceStub":Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    invoke-virtual/range {v36 .. v36}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSimManager()Lcom/sec/internal/ims/imsservice/SimManager;

    move-result-object v4

    .line 285
    .local v4, "SimManager":Lcom/sec/internal/ims/imsservice/SimManager;
    invoke-virtual {v4}, Lcom/sec/internal/ims/imsservice/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v27

    .line 286
    .local v27, "operator":Ljava/lang/String;
    if-eqz v27, :cond_b

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_c

    .line 287
    :cond_b
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v46, "loadProfiles: SIM operator is not found. bail."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 290
    :cond_c
    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 292
    .end local v4    # "SimManager":Lcom/sec/internal/ims/imsservice/SimManager;
    .end local v27    # "operator":Ljava/lang/String;
    .end local v36    # "serviceStub":Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :cond_d
    const-string v45, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    aget-object v27, v45, v46

    .line 293
    .restart local v27    # "operator":Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "loadProfiles: operator="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 296
    .end local v27    # "operator":Ljava/lang/String;
    :cond_e
    const-string v45, "enabled"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_11

    .line 297
    if-eqz v21, :cond_5

    .line 298
    const/4 v15, 0x0

    .line 299
    .local v15, "enable":I
    const-string v45, "manual"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_10

    .line 300
    const/4 v15, 0x1

    .line 304
    :cond_f
    :goto_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 301
    :cond_10
    const-string v45, "on"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_f

    .line 302
    const/4 v15, 0x2

    goto :goto_6

    .line 306
    .end local v15    # "enable":I
    :cond_11
    const-string v45, "reregi_on_ratchange"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_14

    .line 307
    if-eqz v21, :cond_5

    .line 308
    const/16 v31, 0x0

    .line 309
    .local v31, "reregiOnRatChange":I
    const-string v45, "on_service_change"

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_13

    .line 310
    const/16 v31, 0x1

    .line 314
    :cond_12
    :goto_7
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "loadProfiles: reregiOnRatChange="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 311
    :cond_13
    const-string v45, "on"

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_12

    .line 312
    const/16 v31, 0x2

    goto :goto_7

    .line 317
    .end local v31    # "reregiOnRatChange":I
    :cond_14
    const-string v45, "port"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_15

    .line 318
    const-string v45, "sip_port"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 319
    :cond_15
    const-string v45, "support_ipsec"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_17

    .line 320
    move-object/from16 v41, v43

    .line 321
    .local v41, "support_ipsec":Ljava/lang/String;
    if-eqz v41, :cond_5

    .line 322
    const-string v46, "ipsec"

    const-string v45, "true"

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_16

    const/16 v45, 0x1

    :goto_8
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_16
    const/16 v45, 0x0

    goto :goto_8

    .line 324
    .end local v41    # "support_ipsec":Ljava/lang/String;
    :cond_17
    const-string v45, "sip_compact_header"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_19

    .line 325
    move-object/from16 v37, v43

    .line 326
    .local v37, "sip_compact_header":Ljava/lang/String;
    if-eqz v37, :cond_5

    .line 327
    const-string v46, "sip_compact_header"

    const-string v45, "true"

    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_18

    const/16 v45, 0x1

    :goto_9
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_18
    const/16 v45, 0x0

    goto :goto_9

    .line 329
    .end local v37    # "sip_compact_header":Ljava/lang/String;
    :cond_19
    const-string v45, "pcscf_pref"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1b

    .line 330
    move-object/from16 v38, v43

    .line 331
    .local v38, "str_pcscf_pref":Ljava/lang/String;
    const/16 v28, 0x4

    .line 332
    .local v28, "pcscf_pref":I
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-nez v45, :cond_1a

    .line 334
    :try_start_0
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v28

    .line 338
    :cond_1a
    :goto_a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 339
    .end local v28    # "pcscf_pref":I
    .end local v38    # "str_pcscf_pref":Ljava/lang/String;
    :cond_1b
    const-string v45, "timer"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1c

    .line 340
    move-object/from16 v42, v43

    .line 341
    .local v42, "timer":Ljava/lang/String;
    if-eqz v42, :cond_5

    .line 342
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->setTimerValue(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 344
    .end local v42    # "timer":Ljava/lang/String;
    :cond_1c
    const-string v45, "secure_client_port"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1d

    .line 345
    move-object/from16 v39, v43

    .line 346
    .local v39, "str_secure_client_port":Ljava/lang/String;
    if-eqz v39, :cond_5

    .line 347
    const/16 v33, 0x1388

    .line 349
    .local v33, "secure_client_port":I
    :try_start_1
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v33

    .line 355
    :goto_b
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 350
    :catch_0
    move-exception v10

    .line 351
    .local v10, "e":Ljava/lang/NumberFormatException;
    const/16 v33, 0x1388

    .line 352
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v46, "loadProfiles() secure_client_port : wrong format. not int"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_b

    .line 357
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v33    # "secure_client_port":I
    .end local v39    # "str_secure_client_port":Ljava/lang/String;
    :cond_1d
    const-string v45, "secure_server_port"

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1e

    .line 358
    move-object/from16 v40, v43

    .line 359
    .local v40, "str_secure_server_port":Ljava/lang/String;
    if-eqz v40, :cond_5

    .line 360
    const/16 v34, 0x1770

    .line 362
    .local v34, "secure_server_port":I
    :try_start_2
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v34

    .line 368
    :goto_c
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 363
    :catch_1
    move-exception v10

    .line 364
    .restart local v10    # "e":Ljava/lang/NumberFormatException;
    const/16 v34, 0x1770

    .line 365
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v46, "loadProfiles() secure_server_port : wrong format. not int"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_c

    .line 372
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v34    # "secure_server_port":I
    .end local v40    # "str_secure_server_port":Ljava/lang/String;
    :cond_1e
    invoke-static {}, Lcom/sec/ims/settings/ImsSettings$ProfileTable;->getTableMap()Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_5

    .line 375
    const-string v45, "true"

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_1f

    const-string v45, "false"

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_21

    .line 376
    :cond_1f
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_20

    const/16 v45, 0x1

    :goto_d
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_20
    const/16 v45, 0x0

    goto :goto_d

    .line 378
    :cond_21
    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 397
    .end local v21    # "n":Ljava/lang/String;
    .end local v43    # "v":Ljava/lang/String;
    .restart local v9    # "deregTimeoutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "first":Z
    .restart local v24    # "networkEnabledBuilder":Ljava/lang/StringBuilder;
    .restart local v25    # "networkStringBuilder":Ljava/lang/StringBuilder;
    .restart local v35    # "serviceStringBuilder":Ljava/lang/StringBuilder;
    :cond_22
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 426
    :cond_23
    const-string v45, "network"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v45, "service"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v45, "network_enabled"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v45, "dereg_timeout"

    const-string v46, ","

    move-object/from16 v0, v46

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "loadProfiles: mccmnc="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-nez v45, :cond_25

    .line 435
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->getSimInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 439
    :goto_e
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_24

    .line 440
    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v5, v0, [Ljava/lang/String;

    const/16 v45, 0x0

    const-string v46, ""

    aput-object v46, v5, v45

    const/16 v45, 0x1

    const-string v46, "-1"

    aput-object v46, v5, v45

    const/16 v45, 0x2

    const-string v46, "-1"

    aput-object v46, v5, v45

    const/16 v45, 0x3

    const-string v46, ""

    aput-object v46, v5, v45

    .line 443
    .local v5, "arr":[Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v5    # "arr":[Ljava/lang/String;
    :cond_24
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v18

    .line 447
    .local v18, "listLen":I
    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_26

    .line 448
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 449
    .local v14, "eachSimInfo":[Ljava/lang/String;
    const/16 v45, 0x0

    aget-object v11, v14, v45

    .line 450
    .local v11, "eachMccmnc":Ljava/lang/String;
    const/16 v45, 0x1

    aget-object v13, v14, v45

    .line 451
    .local v13, "eachOpStart":Ljava/lang/String;
    const/16 v45, 0x2

    aget-object v12, v14, v45

    .line 453
    .local v12, "eachOpEnd":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->clear()V

    .line 454
    const-string v45, "mccmnc"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v45, "opcode_start"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v45, "opcode_end"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v45, "profile_id"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v45, "profile_name"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v45, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "profile_id="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " name="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mccmnc="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " OpCodeStart="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " OpCodeEnd="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v45, "match_profile_id"

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 447
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_f

    .line 437
    .end local v11    # "eachMccmnc":Ljava/lang/String;
    .end local v12    # "eachOpEnd":Ljava/lang/String;
    .end local v13    # "eachOpStart":Ljava/lang/String;
    .end local v14    # "eachSimInfo":[Ljava/lang/String;
    .end local v18    # "listLen":I
    :cond_25
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "mccmncList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .restart local v20    # "mccmncList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    goto/16 :goto_e

    .line 467
    .restart local v18    # "listLen":I
    :cond_26
    const-string v45, "id"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    const-string v45, "name"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v45, "profile"

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 471
    add-int/lit8 v30, v30, 0x1

    .line 472
    goto/16 :goto_0

    .line 335
    .end local v9    # "deregTimeoutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "first":Z
    .end local v18    # "listLen":I
    .end local v24    # "networkEnabledBuilder":Ljava/lang/StringBuilder;
    .end local v25    # "networkStringBuilder":Ljava/lang/StringBuilder;
    .end local v35    # "serviceStringBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "n":Ljava/lang/String;
    .restart local v28    # "pcscf_pref":I
    .restart local v38    # "str_pcscf_pref":Ljava/lang/String;
    .restart local v43    # "v":Ljava/lang/String;
    :catch_2
    move-exception v45

    goto/16 :goto_a
.end method

.method public static readPrevJoynEnabled(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 727
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v10, -0x1

    .line 729
    .local v10, "retVal":I
    const-string v2, "/data/data/com.sec.ims.android/"

    .line 730
    .local v2, "PACKAGE_NAME":Ljava/lang/String;
    const-string v3, "shared_prefs"

    .line 731
    .local v3, "_DIR":Ljava/lang/String;
    const-string v0, "com.sec.ims.android.gsma.joyn.preferences.xml"

    .line 732
    .local v0, "FILE_NAME":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "FILE_PATH":Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isGsmaJoynPrefCreated(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 735
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled(). sharedPref exist"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isGsmaJoynPrefEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    .line 780
    :goto_0
    return v11

    .line 737
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 740
    :cond_1
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled(). read from frw 4.0 file"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v8, 0x0

    .line 742
    .local v8, "reader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 745
    .local v4, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .end local v8    # "reader":Ljava/io/FileReader;
    .local v9, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 747
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .local v5, "buffer":Ljava/io/BufferedReader;
    :try_start_2
    const-string v7, ""

    .line 749
    .local v7, "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 750
    const-string v11, "gsma.joyn.enabled"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 751
    const-string v11, "false"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 752
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled(). read from frw 4.0 file - joyn is false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 754
    const/4 v10, 0x0

    .line 770
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 771
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 773
    :cond_4
    if-eqz v5, :cond_5

    .line 774
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_6
    :goto_2
    move v11, v10

    .line 780
    goto :goto_0

    .line 755
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :cond_7
    :try_start_4
    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 756
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled(). read from frw 4.0 file - joyn is true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 758
    const/4 v10, 0x1

    goto :goto_1

    .line 776
    :catch_0
    move-exception v6

    .line 777
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    move-object v8, v9

    .line 779
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 763
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 764
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled. file Not found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 770
    if-eqz v8, :cond_8

    .line 771
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 773
    :cond_8
    if-eqz v4, :cond_6

    .line 774
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 776
    :catch_2
    move-exception v6

    .line 777
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 765
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 766
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    sget-object v11, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    const-string v12, "readPrevJoynEnabled. IOException"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 770
    if-eqz v8, :cond_9

    .line 771
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 773
    :cond_9
    if-eqz v4, :cond_6

    .line 774
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 776
    :catch_4
    move-exception v6

    .line 777
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 769
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 770
    :goto_5
    if-eqz v8, :cond_a

    .line 771
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 773
    :cond_a
    if-eqz v4, :cond_b

    .line 774
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 778
    :cond_b
    :goto_6
    throw v11

    .line 776
    :catch_5
    move-exception v6

    .line 777
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 769
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 765
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v6

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 763
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_8
    move-exception v6

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static removeNotExistField(Ljava/util/Set;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "mapKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 150
    .local v0, "cvKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 151
    .local v1, "cvKeyClone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    new-instance v1, Ljava/util/TreeSet;

    .end local v1    # "cvKeyClone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 158
    .restart local v1    # "cvKeyClone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDbCreated(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCreated"    # Z

    .prologue
    .line 704
    const-string v2, "pref_setting_db"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 706
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 710
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "setting_db_created"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setDbJustCreated(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 715
    const-string v2, "pref_setting_db"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 717
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 721
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "setting_db_just_created"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static setTimerValue(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 13
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "timer"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 478
    const-string v9, "\\s*,\\s*"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 479
    .local v8, "timers":[Ljava/lang/String;
    const-string v4, ""

    .line 480
    .local v4, "timerName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 481
    .local v7, "timerValue":I
    if-eqz v8, :cond_10

    .line 482
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_10

    aget-object v5, v0, v2

    .line 483
    .local v5, "timerNameValue":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 482
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    :cond_1
    const-string v9, "\\s*:\\s*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "timerNameValueArr":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    aget-object v9, v6, v11

    if-eqz v9, :cond_0

    aget-object v9, v6, v12

    if-eqz v9, :cond_0

    .line 492
    aget-object v4, v6, v11

    .line 494
    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 498
    const-string v9, "1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 499
    const-string v9, "sip_timer_1"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 500
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v9, "2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 501
    const-string v9, "sip_timer_2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 502
    :cond_3
    const-string v9, "2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 503
    const-string v9, "sip_timer_2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 504
    :cond_4
    const-string v9, "4"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 505
    const-string v9, "sip_timer_4"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 506
    :cond_5
    const-string v9, "A"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 507
    const-string v9, "sip_timer_a"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 508
    :cond_6
    const-string v9, "B"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 509
    const-string v9, "sip_timer_b"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 510
    :cond_7
    const-string v9, "C"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 511
    const-string v9, "sip_timer_c"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 512
    :cond_8
    const-string v9, "D"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 513
    const-string v9, "sip_timer_d"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 514
    :cond_9
    const-string v9, "E"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 515
    const-string v9, "sip_timer_e"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 516
    :cond_a
    const-string v9, "F"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 517
    const-string v9, "sip_timer_f"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 518
    :cond_b
    const-string v9, "G"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 519
    const-string v9, "sip_timer_g"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 520
    :cond_c
    const-string v9, "H"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 521
    const-string v9, "sip_timer_h"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 522
    :cond_d
    const-string v9, "I"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 523
    const-string v9, "sip_timer_i"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 524
    :cond_e
    const-string v9, "J"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 525
    const-string v9, "sip_timer_j"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 526
    :cond_f
    const-string v9, "K"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 527
    const-string v9, "sip_timer_k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 531
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "timerNameValue":Ljava/lang/String;
    .end local v6    # "timerNameValueArr":[Ljava/lang/String;
    :cond_10
    return-void
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 676
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeToFile write file ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] version ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-nez p2, :cond_0

    .line 680
    new-instance v0, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;

    invoke-direct {v0, p0, v8}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;-><init>(Ljava/lang/String;Z)V

    .line 681
    .local v0, "fileManager":Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;
    invoke-virtual {v0, p1, v4}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;->write(Ljava/lang/String;Z)Z

    move-result v4

    .line 700
    :goto_0
    return v4

    .line 684
    .end local v0    # "fileManager":Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;
    :cond_0
    new-instance v0, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;

    const-string v5, "/efs/sec_efs/ims_config_file_version"

    invoke-direct {v0, v5, v8}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;-><init>(Ljava/lang/String;Z)V

    .line 685
    .restart local v0    # "fileManager":Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;->readValuesWithMap()Ljava/util/Map;

    move-result-object v3

    .line 686
    .local v3, "versionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 687
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 688
    .local v1, "lastVersion":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 689
    sget-object v5, Lcom/sec/internal/ims/imsservice/SettingsProviderUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeToFile ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] version is not changed ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    .end local v1    # "lastVersion":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 696
    .local v2, "updateVersion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-virtual {v0, v2, v8}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;->write(Ljava/util/Map;Z)Z

    .line 699
    new-instance v0, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;

    .end local v0    # "fileManager":Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;
    invoke-direct {v0, p0, v8}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;-><init>(Ljava/lang/String;Z)V

    .line 700
    .restart local v0    # "fileManager":Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;
    invoke-virtual {v0, p1, v4}, Lcom/samsung/commonimsinterface/imscommon/internal/IMSFileManager;->write(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0
.end method
