require 'rails_helper'

RSpec.describe "Dishes", type: :system do 
    let!(:user) { create(:user) }

    describe "料理登録ページ" do 
        before do 
            login_for_system(user)
            visit new_dish_path
        end

        context "ページレイアウト" do 
            it "「料理登録」の文字列が存在すること" do 
                expect(page).to have_content '料理登録'
            end

            it "正しいタイトルが表示されること" do 
                expect(page).to have_title full_title('料理登録')
            end
        end
    end
end