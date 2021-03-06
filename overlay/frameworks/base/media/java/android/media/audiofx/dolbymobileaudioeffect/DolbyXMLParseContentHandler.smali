.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
.super Ljava/lang/Object;
.source "DolbyXMLParseContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private allSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private buf:Ljava/lang/StringBuffer;

.field private category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field private custom:Z

.field private description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private dolbyMobilePreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

.field private efficients:I

.field private intList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private intList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private key:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

.field private presets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients24000_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients32000_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients44100_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients48000_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    return-void
.end method

.method private listToArray(Ljava/util/List;)[[I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)[[I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    .line 196
    const/4 v0, 0x0

    check-cast v0, [[I

    .line 197
    .local v0, "arr":[[I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_52

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    filled-new-array {v5, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "arr":[[I
    check-cast v0, [[I

    .line 199
    .restart local v0    # "arr":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_52

    .line 200
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 201
    .local v2, "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 202
    aget-object v5, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v3

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 199
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 206
    .end local v1    # "i":I
    .end local v2    # "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "j":I
    :cond_52
    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 153
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/4 v7, 0x0

    .line 110
    const-string v0, "SpeakerCoefficients24000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    .line 146
    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 147
    return-void

    .line 112
    :cond_13
    const-string v0, "SpeakerCoefficients32000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 113
    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_d

    .line 114
    :cond_1e
    const-string v0, "SpeakerCoefficients44100"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 115
    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_d

    .line 116
    :cond_29
    const-string v0, "SpeakerCoefficients48000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 117
    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_d

    .line 118
    :cond_34
    const-string v0, "byte"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 119
    const/16 v0, 0x5dc0

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_5b

    .line 120
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 121
    :cond_5b
    const/16 v0, 0x7d00

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_7a

    .line 122
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 123
    :cond_7a
    const v0, 0xac44

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_9b

    .line 124
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 125
    :cond_9b
    const v0, 0xbb80

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_d

    .line 126
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 128
    :cond_bc
    const-string v0, "Presets"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 130
    const-string v0, "DolbyMobilePreset"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 131
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->displayName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->description:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->allSettings:Ljava/util/Map;

    iget-boolean v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->custom:Z

    iget-object v5, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->dolbyMobilePreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .line 132
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->presets:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->dolbyMobilePreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 133
    :cond_e6
    const-string v0, "allSettings"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 135
    const-string v0, "entrySet"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 136
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList1:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->listToArray(Ljava/util/List;)[[I

    move-result-object v6

    .line 137
    .local v6, "i":[[I
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->allSettings:Ljava/util/Map;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->key:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    invoke-direct {v2, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 138
    .end local v6    # "i":[[I
    :cond_10a
    const-string/jumbo v0, "key"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 139
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->valueOf(Ljava/lang/String;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->key:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    goto/16 :goto_d

    .line 140
    :cond_12e
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 142
    const-string v0, "DolbyMobileSettings"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList1:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public getPresets()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->presets:Ljava/util/Vector;

    return-object v0
.end method

.method public getSpeakerCoefficients24000()[B
    .registers 4

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, "speakerCoefficients24000":[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 213
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 215
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 219
    .end local v0    # "i":I
    :cond_27
    return-object v1
.end method

.method public getSpeakerCoefficients32000()[B
    .registers 4

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "speakerCoefficients32000":[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 226
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 228
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 232
    .end local v0    # "i":I
    :cond_27
    return-object v1
.end method

.method public getSpeakerCoefficients44100()[B
    .registers 4

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "speakerCoefficients44100":[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 239
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 241
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 245
    .end local v0    # "i":I
    :cond_27
    return-object v1
.end method

.method public getSpeakerCoefficients48000()[B
    .registers 4

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, "speakerCoefficients48000":[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 252
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 254
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 258
    .end local v0    # "i":I
    :cond_27
    return-object v1
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "instruction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 40
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    .line 44
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 11
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v4, "SpeakerCoefficients24000"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    .line 67
    const/16 v4, 0x5dc0

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    .line 106
    :cond_13
    :goto_13
    return-void

    .line 68
    :cond_14
    const-string v4, "SpeakerCoefficients32000"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    .line 70
    const/16 v4, 0x7d00

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_13

    .line 71
    :cond_28
    const-string v4, "SpeakerCoefficients44100"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    .line 73
    const v4, 0xac44

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_13

    .line 74
    :cond_3d
    const-string v4, "SpeakerCoefficients48000"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    .line 76
    const v4, 0xbb80

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_13

    .line 77
    :cond_52
    const-string v4, "byte"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 79
    const-string v4, "Presets"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 80
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->presets:Ljava/util/Vector;

    goto :goto_13

    .line 81
    :cond_6a
    const-string v4, "DolbyMobilePreset"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 82
    const-string/jumbo v4, "qName"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->displayName:Ljava/lang/String;

    .line 83
    const-string/jumbo v4, "qNum"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->description:Ljava/lang/String;

    .line 84
    const-string/jumbo v4, "qResult"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->custom:Z

    .line 85
    const-string/jumbo v4, "qCategory"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v3, v4, v5

    .line 86
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->valueOf(Ljava/lang/String;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    move-result-object v4

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    goto/16 :goto_13

    .line 87
    .end local v3    # "type":Ljava/lang/String;
    :cond_a9
    const-string v4, "allSettings"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->allSettings:Ljava/util/Map;

    goto/16 :goto_13

    .line 89
    :cond_ba
    const-string v4, "entrySet"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 91
    const-string/jumbo v4, "key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 93
    const-string/jumbo v4, "value"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList1:Ljava/util/List;

    goto/16 :goto_13

    .line 95
    :cond_dd
    const-string v4, "DolbyMobileSettings"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    .line 98
    :try_start_ec
    const-class v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const-string/jumbo v5, "s1"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "s1":I
    const-class v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const-string/jumbo v5, "s2"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    .local v2, "s2":I
    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_12e} :catch_130

    goto/16 :goto_13

    .line 102
    .end local v1    # "s1":I
    .end local v2    # "s2":I
    :catch_130
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method
