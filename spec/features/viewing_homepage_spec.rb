describe "the homepage", type: :feature do
  before :each do
    
  end

  it "Inludes 'Back to the start'" do
    visit '/'
    expect(page).to have_content 'Back to the start'
  end
  
end
