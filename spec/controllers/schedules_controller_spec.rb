require 'rails_helper'

RSpec.describe SchedulesController, type: :controller do
  let(:schedule) {FactoryGirl.create(:schedule)}
  let(:user) {FactoryGirl.create(:user)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: :schedule
      expect(response).to have_http_status(:success)
    end

    it "renders show view" do
      get :show, id: :schedule
      expect(response).to render_template(:show)
    end

    it "assigns schedule to @schedule" do
      get :show, id: :schedule
      assigns(:schedule).to eq(:schedule)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    before(:each) do
      login_user
    end

    it "increase the number of schedule by one" do
      expect{
        post :create, schedule: {title: RandomData.random_sentence, due_at: RandomData.random_due_at}
      }.to change(Schedule, :count).by(1)
    end

    it "assigns new schedule to @schedule" do
      post :create, schedule: {title: RandomData.random_sentence, due_at: RandomData.random_due_at}
      expect(assigns(:schedule)).to eq Schedule.last
    end

    it "redirects to new schedule" do
      post :create, schedule: {title: RandomData.random_sentence, due_at: RandomData.random_due_at}
      expect(response).to redirect_to Schedule.last
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: schedule.id
      expect(response).to have_http_status(:success)
    end

    it "renders edit view" do
      get :edit, id: schedule.id
      expect(response).to render_template(:edit)
    end

    it "assigns schedules to be updated to @schedule" do
      get :edit, id: schedule.id
      schedule_instance = assigns(:schedule)
      expect(schedule_instance.id).to eq schedule.id
      expect(schedule_instance.title).to eq schedule.title
      expect(schedule_instance.due_at).to eq schedule.due_at
    end
  end

  describe "PUT #update" do
    it "updates schedules with specified attributes" do
      new_title = RandomData.random_sentence
      new_due_at = RandomData.random_due_at

      put :update, id: schedule.id, schedule: {title: new_title, due_at: new_due_at}

      updated_schedule = assigns(:schedule)

      expect(updated_schedule.id).to eq schedule.id
      expect(updated_schedule.title).to eq new_title
      expect(updated_schedule.due_at.to_s).to eq new_due_at.utc.to_s #to_s because time RSpec testing differs by a few milliseconds
    end
  end
end
