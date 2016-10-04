require "rails_helper"
require "support/login_helper.rb"
include LoginHelper

feature "Questions" do
  let!(:user) { FactoryGirl.create(:user) }
  before do
    visit questions_path
  end

  scenario "they see no questions" do
    expect(page).to have_content "Вопросов пока нет"
  end

  scenario "they see link create question" do
    expect(page).to have_link "Задать вопрос"
  end

  scenario "unauthenticated user whant to ask question" do
    click_link "Задать вопрос"
    expect(page).to have_content "Вам необходимо войти в систему или зарегистрироваться"
  end

  describe "" do
    before do
      login "test@test.com", "123456", "Sign in"
    end
    scenario "authenticated user whant to ask question" do
      click_link "Задать вопрос"

      expect(page).to have_field "question[title]"
      expect(page).to have_field "question[body]"
    end

    scenario "authenticated user leave blank title" do
      click_link "Задать вопрос"
      fill_in 'question_body', with: "Content"
      click_button "Задать вопрос"
      expect(page).to have_content "Заголовок вопроса:не может быть пустым"
    end

    scenario "authenticated user leave blank body" do
      click_link "Задать вопрос"
      fill_in 'question_title', with: "Content"
      click_button "Задать вопрос"
      expect(page).to have_content "Подробное описание ситуации:не может быть пустым"
    end
  end
end
