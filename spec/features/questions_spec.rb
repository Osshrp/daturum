require "rails_helper"

feature "Questions" do
  before do
    visit questions_path
  end

  scenario "they see no questions" do
    # visit cards_path
    expect(page).to have_content "Вопросов пока нет"
  end

  scenario "they see link create question" do
    expect(page).to have_link "Задать вопрос"
  end

  scenario "they whant to ask question" do
    click_link "Задать вопрос"
    expect(page).to have_field "question[title]"
    expect(page).to have_field "question[body]"
  end

  scenario "they leave blank title" do
    click_link "Задать вопрос"
    fill_in 'question_body', with: "Content"
    click_button "Задать вопрос"
    expect(page).to have_content "can't be blank"
  end

  scenario "they leave blank body" do
    click_link "Задать вопрос"
    fill_in 'question_title', with: "Content"
    click_button "Задать вопрос"
    expect(page).to have_content "can't be blank"
  end
end
