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
end
