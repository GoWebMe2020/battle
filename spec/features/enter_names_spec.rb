# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names

feature 'Enter names' do
    scenario 'submitting names' do
        sign_in_and_play
        expect(page).to have_content 'Godzilla'
    end

    scenario 'submitting names' do
        sign_in_and_play
        expect(page).to have_content 'VS'
    end

    scenario 'submitting names' do
        sign_in_and_play
        expect(page).to have_content 'Kong'
    end
end