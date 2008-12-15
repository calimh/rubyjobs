require File.join(File.dirname(__FILE__), '..', "spec_helper" )
require File.dirname(__FILE__) + '/../factory'

include Factory
include AuthenticatedTestHelper

describe JobsController do
	integrate_views

	describe "the index action" do
		before do
			@job = Factory.create_job
			get :index
		end

		it "should render correctly" do
			response.should be_success
		end

		it "should assign a jobs collection" do
			assigns[:jobs].should_not be_nil
		end

		describe "when there are jobs to display" do
			it "should list the most recent jobs" do
				response.should have_tag("ul#job_list")
			end
		end

		describe "when there are no jobs to display" do
			before do
				Job.destroy_all
				get :index
			end
			
			it "should show a message indicating that there are no jobs" do
				response.should have_tag("span#no_jobs")
			end

			it "should not display a list of jobs" do
				get :index
				response.should_not have_tag("ul#job_list")
			end
		end

		it "should have more specs"

	end

	describe "the show action" do
		it "should have specs"
	end

	describe "the new action" do
		it "should have specs"
	end

	describe "the edit action" do
		it "should have specs"
	end

	describe "the create action" do
		it "should have specs"
	end

	describe "the update action" do
		it "should have specs"
	end

	describe "the destroy action" do
		it "should have specs"
	end

end
