def sign_in_and_play
    visit('/')
    fill_in :player1, with: 'Godzilla'
    fill_in :player2, with: 'Kong'
    click_button 'FIGHT!'
end