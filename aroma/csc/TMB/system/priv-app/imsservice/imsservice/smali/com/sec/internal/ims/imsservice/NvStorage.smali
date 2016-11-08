.class public Lcom/sec/internal/ims/imsservice/NvStorage;
.super Ljava/lang/Object;
.source "NvStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "DEFAULT"

.field public static final ID_OMADM:Ljava/lang/String; = "omadm"

.field private static final IMS_NV_STORAGE_XML:Ljava/lang/String; = "/efs/sec_efs/ims_nv_"

.field private static final LOG_TAG:Ljava/lang/String; = "NvStorage"

.field private static final OMADM_PREFIX:Ljava/lang/String; = "omadm/./3GPP_IMS/"

.field private static final ROOT_ELEMENT:Ljava/lang/String; = "NV_STORAGE"

.field private static mDump:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field mDoc:Lorg/w3c/dom/Document;

.field private mLock:Ljava/lang/Object;

.field mName:Ljava/lang/String;

.field mNvFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/imsservice/NvStorage$CircularFifoQueue;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mName:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/NvStorage;->renameOldFile(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/imsservice/NvStorage;->setNvFile(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private declared-synchronized create(Ljava/lang/String;)V
    .locals 11
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string v8, "NvStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create: table "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initDoc()V

    .line 193
    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v8, :cond_1

    .line 194
    const-string v8, "NvStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " open failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v8, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 199
    .local v5, "targetNode":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_0

    .line 204
    :cond_2
    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const-string v9, "NV_STORAGE"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 205
    .local v3, "root":Lorg/w3c/dom/NodeList;
    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v8, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 206
    .local v1, "newel":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v7

    .line 210
    .local v7, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    .line 211
    .local v6, "transformer":Ljavax/xml/transform/Transformer;
    const-string v8, "indent"

    const-string v9, "yes"

    invoke-virtual {v6, v8, v9}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v4, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 213
    .local v4, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v2, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 215
    .local v2, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v6, v4, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 216
    .end local v2    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v7    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    :try_start_3
    const-string v8, "NvStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create() TransformerException exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    .end local v1    # "newel":Lorg/w3c/dom/Node;
    .end local v3    # "root":Lorg/w3c/dom/NodeList;
    .end local v5    # "targetNode":Lorg/w3c/dom/NodeList;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized initDoc()V
    .locals 6

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 141
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 142
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_1

    .line 146
    const-string v3, "NvStorage"

    const-string v4, "mDoc.getDocumentElement(): null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/imsservice/NvStorage;->initNvStorage(Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    const-string v3, "NvStorage"

    const-string v4, "dbFactory exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 140
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 153
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Lorg/xml/sax/SAXException;
    :try_start_3
    const-string v3, "NvStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dBuilder.parse SAXException exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/imsservice/NvStorage;->initNvStorage(Z)V

    goto :goto_0

    .line 156
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "NvStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dBuilder.parse IOException exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized initElements()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    const-string v0, "omadm"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/NvStorage;->create(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNvStorage()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initNvStorage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNvStorage(Z)V
    .locals 13
    .param p1, "forced"    # Z

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v10, "NvStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initNvStorage(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    .line 168
    .local v4, "nvStorage":Ljava/io/File;
    if-nez p1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 170
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 171
    .local v2, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 172
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 173
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string v10, "NV_STORAGE"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 175
    .local v6, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 176
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v9

    .line 177
    .local v9, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    .line 178
    .local v8, "transformer":Ljavax/xml/transform/Transformer;
    const-string v10, "indent"

    const-string v11, "yes"

    invoke-virtual {v8, v10, v11}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 180
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 181
    .local v5, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v8, v7, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v6    # "rootElement":Lorg/w3c/dom/Element;
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v8    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v9    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    const-string v10, "NvStorage"

    const-string v11, "initNvStorage exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4    # "nvStorage":Ljava/io/File;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 184
    .restart local v4    # "nvStorage":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    :try_start_3
    const-string v10, "NvStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initNvStorage TransformerException exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized renameOldFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/efs/sec_efs/ims_nv_storage.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "newFileName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const-string v1, "/efs/sec_efs/ims_nv_DEFAULT.xml"

    .line 107
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "newFile":Ljava/io/File;
    const-string v4, "VZW"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 110
    sget-object v4, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rename result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "newFileName":Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 105
    .restart local v1    # "newFileName":Ljava/lang/String;
    .restart local v3    # "result":Z
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/efs/sec_efs/ims_nv_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    .restart local v0    # "newFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 113
    sget-object v4, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "newFileName":Ljava/lang/String;
    .end local v2    # "oldFile":Ljava/io/File;
    .end local v3    # "result":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private save(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 14
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initDoc()V

    .line 338
    iget-object v11, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v11, :cond_1

    .line 339
    const-string v11, "NvStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " open failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v11, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v11, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 343
    .local v6, "targetChild":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 344
    .local v7, "targetElement":Lorg/w3c/dom/Element;
    if-nez v7, :cond_2

    .line 345
    const-string v11, "NvStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "save("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): targetElement is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initElements()V

    goto :goto_0

    .line 350
    :cond_2
    const/4 v3, 0x0

    .line 351
    .local v3, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 352
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "omadm/./3GPP_IMS/"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 353
    sget-object v11, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v3, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v11, "silent_redial"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sec/internal/ims/imsservice/NvStorage;->writeSilentRedial(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v9

    .line 362
    .local v9, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    .line 363
    .local v8, "transformer":Ljavax/xml/transform/Transformer;
    const-string v11, "indent"

    const-string v12, "yes"

    invoke-virtual {v8, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    iget-object v11, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v5, v11}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 365
    .local v5, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    iget-object v11, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v4, v11}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 367
    .local v4, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v8, v5, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v4    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v8    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v9    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    const-string v10, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/"

    .line 373
    .local v10, "uri":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 374
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "omadm/./3GPP_IMS/"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 375
    iget-object v11, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    .line 368
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    const-string v11, "NvStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reset() TransformerException exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mName:Ljava/lang/String;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized writeSilentRedial(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    const-string v0, "/efs/sec_efs/silent_redial"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .local v0, "PATH":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    const-string v3, "/efs/sec_efs/silent_redial"

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .local v2, "writer":Ljava/io/PrintWriter;
    :goto_0
    if-eqz v2, :cond_0

    .line 391
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :cond_0
    monitor-exit p0

    return-void

    .line 385
    .end local v2    # "writer":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    const/4 v2, 0x0

    .restart local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 381
    .end local v0    # "PATH":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public delete(Ljava/lang/String;)I
    .locals 16
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 294
    sget-object v12, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete: table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 297
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initDoc()V

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v12, :cond_0

    .line 299
    const-string v12, "NvStorage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " open failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v5, 0x0

    monitor-exit v13

    .line 329
    :goto_0
    return v5

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 303
    .local v8, "targetChild":Lorg/w3c/dom/NodeList;
    if-nez v8, :cond_1

    .line 304
    const-string v12, "NvStorage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delete("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "): targetChild is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initElements()V

    .line 306
    const/4 v5, 0x0

    monitor-exit v13

    goto :goto_0

    .line 330
    .end local v8    # "targetChild":Lorg/w3c/dom/NodeList;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 309
    .restart local v8    # "targetChild":Lorg/w3c/dom/NodeList;
    :cond_1
    const/4 v5, 0x0

    .line 310
    .local v5, "numDeleteAttributes":I
    const/4 v12, 0x0

    :try_start_1
    invoke-interface {v8, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 311
    .local v9, "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 312
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    .local v4, "j":I
    :goto_1
    if-lez v4, :cond_2

    .line 313
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 314
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    add-int/lit8 v5, v5, 0x1

    .line 316
    goto :goto_1

    .line 319
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    :cond_2
    :try_start_2
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .line 320
    .local v11, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 321
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v7, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 322
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v6, v12}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 324
    .local v6, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v10, v7, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    :try_start_3
    monitor-exit v13

    goto :goto_0

    .line 325
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    const-string v12, "NvStorage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delete() TransformerException exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 222
    const-string v0, "NvStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/NvStorage;->save(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 230
    const-string v15, "NvStorage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "query: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 233
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v7, "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initDoc()V

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v15, :cond_0

    .line 236
    const-string v15, "NvStorage"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " open failed"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v6, 0x0

    monitor-exit v16

    .line 286
    :goto_0
    return-object v6

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 240
    .local v12, "nList":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_6

    .line 241
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 242
    .local v13, "nNode":Lorg/w3c/dom/Node;
    if-nez v13, :cond_1

    .line 243
    const-string v15, "NvStorage"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "query("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): nNode is null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initElements()V

    .line 245
    const/4 v6, 0x0

    monitor-exit v16

    goto :goto_0

    .line 287
    .end local v7    # "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "nList":Lorg/w3c/dom/NodeList;
    .end local v13    # "nNode":Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 247
    .restart local v7    # "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "nList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "nNode":Lorg/w3c/dom/Node;
    :cond_1
    :try_start_1
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 249
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v14, 0x0

    .line 250
    .local v14, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 251
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v9, v15, :cond_2

    .line 252
    aget-object v15, p2, v9

    const-string v17, "omadm/./3GPP_IMS/"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, p2, v9

    .line 251
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 254
    :cond_2
    new-instance v14, Ljava/util/HashSet;

    .end local v14    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 257
    .end local v9    # "i":I
    .restart local v14    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v15

    if-ge v11, v15, :cond_5

    .line 258
    invoke-interface {v3, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 259
    .local v2, "attr":Lorg/w3c/dom/Node;
    if-eqz v14, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 257
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 262
    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 265
    .end local v2    # "attr":Lorg/w3c/dom/Node;
    :cond_5
    if-eqz v14, :cond_6

    const-string v15, "DUMP"

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 266
    const-string v15, "DUMP"

    sget-object v17, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "j":I
    .end local v13    # "nNode":Lorg/w3c/dom/Node;
    .end local v14    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const/4 v6, 0x0

    .line 271
    .local v6, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 272
    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v17, "PATH"

    aput-object v17, v4, v15

    const/4 v15, 0x1

    const-string v17, "VALUE"

    aput-object v17, v4, v15

    .line 275
    .local v4, "columnNames":[Ljava/lang/String;
    array-length v15, v4

    new-array v5, v15, [Ljava/lang/String;

    .line 277
    .local v5, "columnValues":[Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    invoke-direct {v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 279
    .restart local v6    # "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 280
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v17, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "omadm/./3GPP_IMS/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v17

    .line 281
    const/16 v17, 0x1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v5, v17

    .line 282
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 286
    .end local v4    # "columnNames":[Ljava/lang/String;
    .end local v5    # "columnValues":[Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized setNvFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "NvStorage"

    const-string v1, "same nv file. do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDump:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading new nv file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/NvStorage;->setName(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 126
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/efs/sec_efs/ims_nv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    .line 127
    const-string v0, "NvStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNvFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initNvStorage()V

    .line 130
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initDoc()V

    .line 131
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/NvStorage;->initElements()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
