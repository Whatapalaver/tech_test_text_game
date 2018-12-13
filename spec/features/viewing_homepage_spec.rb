describe "the homepage", type: :feature do
  before :each do
    
  end

  it "displays Hello world" do
    visit '/'
    expect(page).to have_content 'Hello world!'
  end
end