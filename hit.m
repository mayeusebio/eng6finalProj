function hit(app)
if (app.player1turn == 1)
    app.numCardsDealt = app.numCardsDealt + 1;
    app.Label.Text = num2str(str2double(app.Label.Text) + str2double(app.shuffledCards{app.numCardsDealt,2}));
    %updates label value for Player 1 score
    score1 = str2double(app.Label.Text);
    if score1<21
        app.player1turn = 1;
    elseif score1 == 21
        app.player1turn=0;
        %fprintf("Blackjack!")
    elseif score1>21
        app.player1turn = 0;
        % Enable player 2's buttons if player 1 busts
        app.HitButton_2.Enable = 'on';
        app.StandButton_2.Enable = 'on';
    else
        app.ErrorLabel.Visible = 'on';
    end
end        
if (app.player2turn == 1)
    app.numCardsDealt = app.numCardsDealt + 1;
    app.Label_2.Text = num2str(str2double(app.Label_2.Text) + str2double(app.shuffledCards{app.numCardsDealt,2}));
    %updates player 2 score
    score2 = str2num(app.Label_2.Text);
    if score2<21
        app.player2turn = 1;
    elseif score2==21
        app.player2turn=0;
        dealerPlay(app)
        %fprintf("Blackjack!")
    elseif score2>21
        app.player2turn = 0;
        dealerPlay(app)
    else
        app.ErrorLabel.Visible = 'on';
    end
end


end