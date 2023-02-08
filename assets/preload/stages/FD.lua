local adamsandler = 0;

function onCreatePost()
    addHaxeLibrary('Paths');
    runHaxeCode([[
        stage2 = new FlxSprite();
        stage2.loadGraphic(Paths.image('supersonicsky'));
        stage2.x -= 900;
        stage2.scale.x = 1.4;
        game.addBehindGF(stage2);

        stage = new FlxSprite();
        stage.loadGraphic(Paths.image('supersonicground'));
        stage.x -= 600;
        stage.scale.x = 2;
        game.addBehindGF(stage);
    ]])
end

function onUpdate(elapsed)
    if not mustHitSection then
        setProperty('defaultCamZoom', 0.6)
    else
        setProperty('defaultCamZoom', 0.9)
    end

    doTweenY('opponentFloatshit', 'dad', (math.sin(adamsandler*2)*20), 0.001, 'linear')
    adamsandler = adamsandler+0.01
end

        