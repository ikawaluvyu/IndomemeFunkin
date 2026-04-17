



function create(){
    
    langit = new FlxSprite(-1538, -810).loadGraphic(Paths.image('stages/kolamBG/Langit'));
    langit.antialiasing = true;
    langit.alpha = 1;
    langit.scale.set(0.7, 0.7);
    langit.scrollFactor.set(0.25, 0.25);
    insert(members.indexOf(gf)-1, langit);

    awan1 = new FlxSprite(-400, -464).loadGraphic(Paths.image('stages/kolamBG/awan1'));
    awan1.antialiasing = true;
    awan1.alpha = 1;
    awan1.scale.set(0.7, 0.7);
    awan1.scrollFactor.set(0.35, 0.35);
    insert(members.indexOf(langit)+1, awan1);

    awan2 = new FlxSprite(356, -610).loadGraphic(Paths.image('stages/kolamBG/awan2'));
    awan2.antialiasing = true;
    awan2.alpha = 1;
    awan2.scale.set(0.7, 0.7);
    awan2.scrollFactor.set(0.35, 0.35);
    insert(members.indexOf(awan1)+1, awan2);

    awan3 = new FlxSprite(745, -410).loadGraphic(Paths.image('stages/kolamBG/awan3'));
    awan3.antialiasing = true;
    awan3.alpha = 1;
    awan3.scale.set(0.7, 0.7);
    awan3.scrollFactor.set(0.35, 0.35);
    insert(members.indexOf(awan2)+1, awan3);

    awan4 = new FlxSprite(940, -590).loadGraphic(Paths.image('stages/kolamBG/awan4'));
    awan4.antialiasing = true;
    awan4.alpha = 1;
    awan4.scale.set(0.7, 0.7);
    awan4.scrollFactor.set(0.35, 0.35);
    insert(members.indexOf(awan3)+1, awan4);

    rumah = new FlxSprite(-890, -694).loadGraphic(Paths.image('stages/kolamBG/rumah'));
    rumah.antialiasing = true;
    rumah.alpha = 1;
    rumah.scale.set(0.7, 0.7);
    rumah.scrollFactor.set(0.85, 0.85);
    insert(members.indexOf(awan4)+1, rumah);

    pohon = new FlxSprite(-790, -820).loadGraphic(Paths.image('stages/kolamBG/pohon'));
    pohon.antialiasing = true;
    pohon.alpha = 1;
    pohon.scale.set(0.7, 0.7);
    pohon.scrollFactor.set(0.875, 0.875);
    insert(members.indexOf(rumah)+1, pohon);

    daun = new FlxSprite(1190, -125).loadGraphic(Paths.image('stages/kolamBG/daun'));
    daun.antialiasing = true;
    daun.alpha = 1;
    daun.scale.set(0.7, 0.7);
    daun.scrollFactor.set(0.875, 0.875);
    insert(members.indexOf(pohon)+1, daun);

    mancing = new FlxSprite(-1310, -320).loadGraphic(Paths.image('stages/kolamBG/mancing'));
    mancing.antialiasing = true;
    mancing.alpha = 1;
    mancing.scale.set(0.7, 0.7);
    mancing.scrollFactor.set(0.95, 0.95);
    insert(members.indexOf(daun)+1, mancing);

    groundkolam = new FlxSprite(-1845, -910).loadGraphic(Paths.image('stages/kolamBG/kolamground'));
    groundkolam.antialiasing = true;
    groundkolam.alpha = 1;
    groundkolam.scale.set(0.7, 0.7);
    insert(members.indexOf(mancing)+1, groundkolam);

    kursikiri = new FlxSprite(-1315, 38).loadGraphic(Paths.image('stages/kolamBG/kursikiri'));
    kursikiri.antialiasing = true;
    kursikiri.alpha = 1;
    kursikiri.scale.set(0.7, 0.7);
    insert(members.indexOf(groundkolam)+1, kursikiri);

    kursikanan = new FlxSprite(1185, 38).loadGraphic(Paths.image('stages/kolamBG/kursikanan'));
    kursikanan.antialiasing = true;
    kursikanan.alpha = 1;
    kursikanan.scale.set(0.7, 0.7);
    insert(members.indexOf(kursikiri)+1, kursikanan);

    tiangkiri = new FlxSprite(-823, -765).loadGraphic(Paths.image('stages/kolamBG/tiangkiri'));
    tiangkiri.antialiasing = true;
    tiangkiri.alpha = 1;
    tiangkiri.scale.set(0.7, 0.7);
    insert(members.indexOf(kursikanan)+1, tiangkiri);

    tiangkanan = new FlxSprite(1988, -765).loadGraphic(Paths.image('stages/kolamBG/tiangkanan'));
    tiangkanan.antialiasing = true;
    tiangkanan.alpha = 1;
    tiangkanan.scale.set(0.7, 0.7);
    insert(members.indexOf(tiangkiri)+1, tiangkanan);

    lighting = new FlxSprite(-1845, -845).loadGraphic(Paths.image('stages/kolamBG/cahaya'));
    lighting.antialiasing = true;
    lighting.alpha = 1;
    lighting.scale.set(0.7, 0.7);
    insert(members.indexOf(bf)+1, lighting);


}