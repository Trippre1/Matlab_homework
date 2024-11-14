% Author Name: Tripp McEvoy
% Email: mcevoy42@rowan.edu
% Created On: 11/11/2024
% Updated On: 11/12/2024
% Update By: Tripp
% Assignment: Midterm

% Main script to demonstrate the functionality
db = StudentDatabase();  % Create a new StudentDatabase object

% Adding sample students
db = db.addStudent(Student(1, 'Tripp', 22, 4.0, 'Mechanical Engineering'));
db = db.addStudent(Student(2, 'Peter', 17, 1.0, 'Economics'));
db = db.addStudent(Student(3, 'Paul', 12, 2.9, 'gym'));

% Performing searches
student = db.findStudentByID(1);  % Find student by ID
if ~isempty(student)
    student.displayInfo();  % Display student information
end

studentsCH = db.getStudentsByMajor('Chemistry');  % Get students by major
for i = 1:length(studentsCH)
    studentsCH(i).displayInfo();  % Display information for each student
end

% Generating visualizations
VisualizeData(db)  % Call the function to visualize data

% Saving and loading database
db.saveToFile('StudentDatabase.mat');  % Save the database to a file
db = db.loadFromFile('StudentDatabase.mat');  % Load the database from a file
