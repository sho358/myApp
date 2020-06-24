require 'rails_helper'

RSpec.describe "Dishes", type: :system do 
    let!(:user) { create(:user) }
    let!(:dish) { create(:dish, user: user) }

    describe "料理登録ページ" do 
        context "ページレイアウト" do 
            before do 
                login_for_system(user)
                visit dish_path(dish)
            end

            it "正しいタイトルが表示されること" do 
                expect(page).to have_title full_title("#{dish.name}")
            end

            it "料理情報が表示されること" do 
                expect(page).to have_content dish.name
                expect(page).to have_content dish.description
                expect(page).to have_content dish.portion
                expect(page).to have_content dish.tips
                expect(page).to have_content dish.reference
                expect(page).to have_content dish.required_time
                expect(page).to have_content dish.popularity
            end
                
        end
    end
end