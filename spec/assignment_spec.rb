require "spec_helper"

describe Assignment do
  it "belongs to a project" do
    project = Project.create({:name => "Build an App"})
    assignment = Assignment.create({:project_id => project.id})
    expect(assignment.project_id).to(eq(project.id))
  end
end
