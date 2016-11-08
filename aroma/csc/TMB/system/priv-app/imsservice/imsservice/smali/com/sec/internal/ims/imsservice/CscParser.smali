.class public Lcom/sec/internal/ims/imsservice/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/CscParser$CustomerSettingTable;
    }
.end annotation


# static fields
.field public static final CSC_EDITION:Ljava/lang/String; = "CSCEdition"

.field private static final CSC_EDITION_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.CSCEdition"

.field private static final CUSTOMER_CSC_FILE_NAME:Ljava/lang/String; = "/customer.xml"

.field private static final CUSTOMER_CSC_FILE_PATH:Ljava/lang/String; = "/system/csc"

.field private static final IMS6_CSC_EDITION:F = 2.5f

.field private static final IMS_PATH:Ljava/lang/String; = "CustomerData.Settings.IMSSetting.NbSetting"

.field private static final LOG_TAG:Ljava/lang/String; = "CscParser"

.field private static final NETWORK_INFO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.NetworkInfo"

.field private static final PERSIST_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"

.field public static final SALES_CODE:Ljava/lang/String; = "SalesCode"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.SalesCode"

.field private static mFileInputStream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method

.method private static closeFileInputStream()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    sget-object v1, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sput-object v2, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 104
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    sput-object v2, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v2, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    throw v1
.end method

.method private static getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 59
    const-string v6, "persist.sys.omc_path"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "propertyPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/customer.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "customerPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "customer":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    const-string v6, "CscParser"

    const-string v7, "customer.xml file does not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    return-object v5

    .line 64
    .end local v0    # "customer":Ljava/io/File;
    .end local v1    # "customerPath":Ljava/lang/String;
    :cond_0
    const-string v1, "/system/csc/customer.xml"

    .restart local v1    # "customerPath":Ljava/lang/String;
    goto :goto_0

    .line 73
    .restart local v0    # "customer":Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    .line 74
    .local v5, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 77
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 78
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 79
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 80
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v6, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 81
    sget-object v6, Lcom/sec/internal/ims/imsservice/CscParser;->mFileInputStream:Ljava/io/FileInputStream;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v5, 0x0

    .line 84
    :try_start_1
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_1

    .line 90
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 86
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 88
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static getCscEdition()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 109
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v1, :cond_0

    .line 110
    const-string v3, "CscParser"

    const-string v4, "XmlPullParser is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    .line 133
    :goto_0
    return-object v2

    .line 115
    :cond_0
    const-string v3, "CustomerData.GeneralInfo.CSCEdition"

    invoke-static {v1, v3}, Lcom/sec/internal/ims/imsservice/CscParser;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const-string v3, "CscParser"

    const-string v4, "can not find CustomerData.GeneralInfo.CSCEdition"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 122
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 124
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 130
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    throw v2
.end method

.method public static getCscImsSetting(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 222
    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/CscParser;->getNetworkNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-object v4, v8

    .line 274
    :goto_0
    return-object v4

    .line 227
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 229
    .local v7, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v7, :cond_2

    .line 230
    const-string v9, "CscParser"

    const-string v10, "XmlPullParser is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    move-object v4, v8

    .line 232
    goto :goto_0

    .line 235
    :cond_2
    const-string v9, "CustomerData.Settings.IMSSetting.NbSetting"

    invoke-static {v7, v9}, Lcom/sec/internal/ims/imsservice/CscParser;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 236
    const-string v9, "CscParser"

    const-string v10, "can not find CustomerData.Settings.IMSSetting.NbSetting"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    move-object v4, v8

    .line 238
    goto :goto_0

    .line 242
    :cond_3
    const/4 v4, 0x0

    .line 247
    .local v4, "setting":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 248
    .local v5, "text":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "event":I
    const/4 v9, 0x1

    if-eq v1, v9, :cond_5

    .line 249
    const/4 v9, 0x2

    if-ne v1, v9, :cond_4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Setting"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    invoke-static {v7}, Lcom/sec/internal/ims/imsservice/CscParser;->getSetting(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 253
    :try_start_1
    const-string v9, "Version"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 258
    .local v6, "ver":F
    :goto_2
    const/high16 v9, 0x40200000    # 2.5f

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_4

    :try_start_2
    const-string v9, "NetworkName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 261
    const-string v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "csc ims setting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 254
    .end local v6    # "ver":F
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .restart local v6    # "ver":F
    goto :goto_2

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "ver":F
    :cond_4
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 267
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object v4, v8

    .line 274
    goto/16 :goto_0

    .line 272
    .restart local v1    # "event":I
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_3

    .line 269
    .end local v1    # "event":I
    :catch_2
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    throw v8
.end method

.method public static getCscSalesCode()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 139
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v1, :cond_0

    .line 140
    const-string v3, "CscParser"

    const-string v4, "XmlPullParser is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    .line 162
    :goto_0
    return-object v2

    .line 145
    :cond_0
    const-string v3, "CustomerData.GeneralInfo.SalesCode"

    invoke-static {v1, v3}, Lcom/sec/internal/ims/imsservice/CscParser;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    const-string v3, "CscParser"

    const-string v4, "can not find CustomerData.GeneralInfo.SalesCode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 152
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 154
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    throw v2
.end method

.method private static getNetworkNames(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "operator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x4

    .line 166
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 168
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v6, :cond_0

    .line 169
    const-string v8, "CscParser"

    const-string v9, "XmlPullParser is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    move-object v4, v7

    .line 217
    :goto_0
    return-object v4

    .line 174
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {v6, v8}, Lcom/sec/internal/ims/imsservice/CscParser;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 177
    const-string v8, "CscParser"

    const-string v9, "can not find CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    move-object v4, v7

    .line 179
    goto :goto_0

    .line 184
    :cond_1
    const/4 v3, 0x0

    .line 185
    .local v3, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 186
    .local v2, "mccmnc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 187
    .local v5, "networkName":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v7, 0x1

    if-eq v1, v7, :cond_8

    .line 188
    const/4 v7, 0x2

    if-ne v1, v7, :cond_6

    .line 189
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 190
    const-string v7, "MCCMNC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 191
    :cond_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 193
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 194
    :cond_4
    const-string v7, "NetworkName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    :cond_5
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 197
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 199
    :cond_6
    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    .line 200
    const-string v7, "NetworkInfo"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 201
    const-string v7, "CscParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mccmnc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", networkName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 210
    .end local v1    # "event":I
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto/16 :goto_0

    .line 205
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "event":I
    :cond_7
    :try_start_2
    const-string v7, "GeneralInfo"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 215
    :cond_8
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto/16 :goto_0

    .line 212
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/sec/internal/ims/imsservice/CscParser;->closeFileInputStream()V

    throw v7
.end method

.method private static getSetting(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 278
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v3, "setting":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 282
    .local v4, "text":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "event":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 283
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 284
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 297
    .end local v1    # "event":I
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 302
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-object v3

    .line 285
    .restart local v1    # "event":I
    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 286
    :try_start_1
    const-string v5, "Setting"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 289
    :cond_3
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 290
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 292
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 299
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "token":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 319
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 321
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {p0, v1}, Lcom/sec/internal/ims/imsservice/CscParser;->searchTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 333
    .end local v1    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "token":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "token":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static searchTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 344
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "event":I
    if-eq v1, v2, :cond_1

    .line 345
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 346
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    .end local v1    # "event":I
    :goto_1
    return v2

    .line 349
    .restart local v1    # "event":I
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 355
    .end local v1    # "event":I
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 360
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 352
    .restart local v1    # "event":I
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 357
    .end local v1    # "event":I
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
