require("spec_helper")

describe(Employee) do
  it("belongs to a project through an assignment") do
    test_project = Project.create({:name => "Very important project"})
    test_employee1 = Employee.create({:name => "Pilar Martinez"})
    assignment = Assignment.create({:project_id => test_project.id, :employee_id => test_employee1.id})
    expect(assignment.project_id).to(eq(test_project.id))
    expect(assignment.employee_id).to(eq(test_employee1.id))
  end
end
