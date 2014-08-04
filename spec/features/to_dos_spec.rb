feature "ToDos" do
  scenario "A user can sign in a create a ToDo" do

    visit "/"

    click_link "Register"

    fill_in "Username", with: "hunta"
    fill_in "Password", with: "pazzword"

    click_button "Register"

    fill_in "Username", with: "hunta"
    fill_in "Password", with: "pazzword"

    click_button "Sign In"

    expect(page).to have_content "Welcome, hunta"

    fill_in "What do you need to do?", with: "Get a haircut"
    click_button "Add ToDo"

    expect(page).to have_content "ToDo added"

    within ".todos" do
      expect(page).to have_content "Get a haircut"
    end

    #Edit to do
    click_link "Edit"
    expect(page).to have_content "Edit ToDo"
    expect(page).to have_content "Get a haircut"
    fill_in "What do you need to do?", with: "Get a bitch'n haircut"
    click_button "Update ToDo"
    expect(page).to have_content "Get a bitch'n haircut"
  end #end scenario

end #end feature
