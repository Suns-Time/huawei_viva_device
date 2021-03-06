.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
.super Ljava/lang/Object;
.source "DolbyMobilePreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    }
.end annotation


# instance fields
.field private _allSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private _category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field private _custom:Z

.field private _description:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V
    .registers 11
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p4, "custom"    # Z
    .param p5, "category"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;Z",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "allSettings":Ljava/util/Map;, "Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_description:Ljava/lang/String;

    .line 107
    iput-boolean p4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_custom:Z

    .line 108
    iput-object p5, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    .line 111
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .line 112
    .local v0, "endpoint":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 113
    .end local v0    # "endpoint":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    :cond_34
    return-void
.end method

.method public static getGraphicEQBandNLevelRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 699
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    return-object v0
.end method

.method public static getHighFrequencyEnhancerDepthRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 339
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    return-object v0
.end method

.method public static getMobileSurroundBrightnessRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 532
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_BRIGHTNESS_RANGE:[I

    return-object v0
.end method

.method public static getMobileSurroundRoomSizeRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 479
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_ROOMSIZE_RANGE:[I

    return-object v0
.end method

.method public static getNaturalBassBoostRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 250
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    return-object v0
.end method

.method public static getSoundLevelControllerDepthRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 647
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    return-object v0
.end method

.method public static getSoundLevelControllerLevelRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 607
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    return-object v0
.end method

.method public static getSoundSpaceEnhancerWidthRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .registers 2
    .param p0, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 404
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SSE_WIDTH_RANGE:[I

    return-object v0
.end method


# virtual methods
.method public copySettingsFrom(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;)V
    .registers 8
    .param p1, "preset"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 185
    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->getAllSettings()Ljava/util/Map;

    move-result-object v1

    .line 186
    .local v1, "allSettings":Ljava/util/Map;, "Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    .line 187
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    .line 188
    .local v0, "ad":Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    new-instance v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    invoke-direct {v5, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 190
    .end local v0    # "ad":Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    .end local v1    # "allSettings":Ljava/util/Map;, "Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_36
    return-void
.end method

.method getAllSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCategory()Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicEQBandNLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)I
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "band"    # I

    .prologue
    const/4 v3, 0x7

    .line 751
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 752
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    if-le p2, v1, :cond_16

    if-lez p2, :cond_1f

    .line 754
    :cond_16
    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1

    .line 756
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Band. Check TDAS_GEQ_NBANDS"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGraphicEQEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 689
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 690
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_16

    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method public getHighFrequencyEnhancerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 348
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 349
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getHighFrequencyEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 316
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_16
    return v1

    :cond_17
    move v1, v2

    goto :goto_16
.end method

.method public getMobileSurroundBrightness(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 543
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 544
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getMobileSurroundEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 456
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_16
    return v1

    :cond_17
    move v1, v2

    goto :goto_16
.end method

.method public getMobileSurroundRoomSize(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 490
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 491
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getMono2StereoEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 291
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 292
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_15

    :goto_14
    return v1

    :cond_15
    move v1, v2

    goto :goto_14
.end method

.method public getNaturalBassBoost(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 280
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 281
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getNaturalBassEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 227
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_16

    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method public getSoundLevelControllerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 656
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 657
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getSoundLevelControllerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 584
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_16

    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method public getSoundLevelControllerLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 616
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 617
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getSoundSpaceEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 381
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_16

    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method public getSoundSpaceEnhancerWidth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .registers 5
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .prologue
    .line 415
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 416
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public isCustom()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_custom:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_description:Ljava/lang/String;

    .line 218
    :cond_8
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    .line 204
    :cond_8
    return-void
.end method

.method public setGraphicEQBandNLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;II)V
    .registers 9
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "band"    # I
    .param p3, "level"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 726
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 728
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p3, v1, :cond_39

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    aget v1, v1, v3

    if-gt p3, v1, :cond_39

    .line 730
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 731
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    invoke-virtual {v0, v4, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    if-le p2, v1, :cond_29

    if-lez p2, :cond_31

    .line 733
    :cond_29
    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1, p3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 740
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_30
    return-void

    .line 735
    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Band. Check TDAS_GEQ_BANDN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_GEQ_BAND"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setGraphicEQEnableEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 709
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 711
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 712
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x7

    if-eqz p2, :cond_1b

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 714
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1a
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    move v1, v2

    .line 712
    goto :goto_17
.end method

.method public setHighFrequencyEnhancerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "depth"    # I

    .prologue
    const/4 v3, 0x1

    .line 362
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 364
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_26

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    aget v1, v1, v3

    if-gt p2, v1, :cond_26

    .line 366
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 367
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 371
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_25
    return-void

    .line 369
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_HFE_DEPTH_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHighFrequencyEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 328
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 329
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0xa

    if-eqz p2, :cond_1c

    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 331
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1c
    move v1, v2

    .line 329
    goto :goto_18
.end method

.method public setMobileSurroundBrightness(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 6
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "bright"    # I

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 559
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 560
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    packed-switch p2, :pswitch_data_24

    .line 571
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_MSR_BRIGHT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :pswitch_1d
    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 575
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_23
    return-void

    .line 560
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public setMobileSurroundEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 468
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 469
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0x9

    if-eqz p2, :cond_1c

    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 471
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1c
    move v1, v2

    .line 469
    goto :goto_18
.end method

.method public setMobileSurroundRoomSize(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 6
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "roomsize"    # I

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 507
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 509
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    packed-switch p2, :pswitch_data_24

    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_MSR_ROOM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :pswitch_1d
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 524
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_23
    return-void

    .line 509
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public setMono2StereoEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 8
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 304
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 305
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    if-eqz p2, :cond_1b

    move v1, v2

    :goto_17
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 307
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1a
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    move v1, v3

    .line 305
    goto :goto_17
.end method

.method public setNaturalBassBoost(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 6
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "boost"    # I

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 265
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_26

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt p2, v1, :cond_26

    .line 267
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 268
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 272
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_25
    return-void

    .line 270
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_NB_BOOST_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNaturalBassEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 239
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 240
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x6

    if-eqz p2, :cond_1b

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 242
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1a
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    move v1, v2

    .line 240
    goto :goto_17
.end method

.method public setSoundLevelControllerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "depth"    # I

    .prologue
    const/4 v3, 0x1

    .line 670
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 672
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_25

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    aget v1, v1, v3

    if-gt p2, v1, :cond_25

    .line 674
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 675
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 679
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_24
    return-void

    .line 677
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_SLC_DEPTH_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSoundLevelControllerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 594
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 596
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 597
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x4

    if-eqz p2, :cond_1b

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 599
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1a
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    move v1, v2

    .line 597
    goto :goto_17
.end method

.method public setSoundLevelControllerLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 630
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 632
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_25

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    aget v1, v1, v3

    if-gt p2, v1, :cond_25

    .line 634
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 635
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 639
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_24
    return-void

    .line 637
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_SLC_LEVEL_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSoundSpaceEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .registers 7
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 393
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 394
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x2

    if-eqz p2, :cond_1b

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 396
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1a
    return-void

    .restart local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1b
    move v1, v2

    .line 394
    goto :goto_17
.end method

.method public setSoundSpaceEnhancerWidth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .registers 6
    .param p1, "endpoint"    # Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .param p2, "width"    # I

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 431
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .line 433
    .local v0, "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    packed-switch p2, :pswitch_data_24

    .line 443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_SSE_WIDTH"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :pswitch_1d
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .line 447
    .end local v0    # "settings":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_22
    return-void

    .line 433
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    return-object v0
.end method
