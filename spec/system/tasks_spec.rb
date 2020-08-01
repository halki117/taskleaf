require 'rails_helper'

describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
      FactoryBot.create(:task, name: '最初のタスク', user: user_a)
    end

    context 'ユーザーAでログインしている時' do
      before do
        visit login_path
        fill_in 'メールアドレス', with: 'a@example.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログインする'
      end

      it 'ユーザーAが作成したタスクが表示される' do
        expect(page).to have_content '最初のタスク'
      end
    end

    context 'ユーザーBでログインしている時' do
      before do
        # ユーザーBを作成しておく
        # ユーザーBでログインしておく
      end

      it 'ユーザーAが表示されたタスクが表示されない' do
        # ユーザAが作成したタスクが画面上に表示されないことを確認
      end
      
    end
  end
end