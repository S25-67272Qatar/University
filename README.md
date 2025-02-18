67-272: University Course and Faculty Management System 
=
This project is a University Course & Faculty Management System, designed to model and manage the relationships between departments, faculty members, courses, and assignments within an academic institution. The system ensures that faculty members belong to departments, are assigned to courses, and that departments oversee multiple courses and faculty members.

Entities & Relationships
---
- *Course*
	- Represents a university course.
	- Can have multiple faculty members assigned to it (via assignments).
	
- *Department*
	- Represents an academic department.
	- Oversees multiple faculty members and indirectly manages courses through them.

- *Faculty*
	- Represents a faculty member.
	- Belongs to a specific department.
	- Can be assigned to multiple courses (via assignments).
	
- *Assignment*
	- Acts as a join table between faculty members and courses.
	- Represents a specific faculty member's role in teaching a course.
	- Each assignment belongs to one course and one faculty member.

Important Notes
---
This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.  


Some items and helper files have been added in advance to speed up time in-class to complete these exercises.  For example, `minitest_extensions` module is present and included in `test/test_helper.rb` by default.  Another example is that `validates_timeliness` gem is installed and the initializer for that gem has also been run for you.  Note that time zone in `config/application.rb` was defaulted to Eastern (Pgh) time; feel free to change this as appropriate.

You may work and talk with others in class for help completing this exercise.


Instructions
---

<h4>Step 1: Clone and Set Up the Project</h4>

Having cloned this repo to your VM, we need to set up the project as follows:

1. Install required gems with `bundle install`. This installs all necessary dependencies specified in the `Gemfile`.
 
2. Create the database and apply migrations `rails db:migrate`. This sets up the database schema as defined in the project's migrations.

<h4>Step 2: Implement and Test the Department Model</h4>
1. Open `app/models/department.rb` and `test/models/department_test.rb`
2. Implement the necessary parts of the Department model
3. Run the tests and see that tests for department passes while tests for faculty fail.

<h4>Step 3: Implement and Test the Faculty Model</h4>

1. Open up `app/models/faculty.rb
2. Review the existing code and complete any missing associations, validations, or scopes. Comments are already provided to guide your implementation.
3. Run the tests again to confirm that Faculty tests still fail.
4.  Open up `test/models/faculty_test.rb` and implement the missing cases. Ensure that all model methods and scopes are tested properly. 

<h4>Step 4: Load Testing Contexts</h4>
 
To speed things up, we have provided a context (predefined testing data) for both departments and faculties for you.

1. Before testing, load the testing data into a clean copy of your dev database with the command `rails db:contexts`. (_Note that this is not built into Rails; it was written for you and also exists in your project starter code._) Once that's done and the contexts build without error, re-open rails console and run `Department.all` and `Faculty.all` and see that the testing context data is loaded in the dev environment.

<h4>Step 5: Verify Queries in Rails Console</h4>
Now, let's test some queries to confirm that your model associations and scopes work as expected.

1. What would `Faculty.alphabetical.active.first.department` return in rails console?  
2. Go to rails console and verify that you are correct (or if not, figure out why you were wrong)


Prof. Houda
