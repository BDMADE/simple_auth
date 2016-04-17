# simple_auth

<p>This application is <strong>Ruby on Rails</strong> based authentication and authorized system for staring a project.</p>

<h3>How to Install</h3>

<p>Step1: clone it from github using this : <code> git clone https://github.com/BDMADE/simple_auth.git</code></p>
<p>Step2: <code>cd simple_auth</code></p>
<p>Step3: <code>bundle install</code></p>
<p>Step4: <code>rake db:migrate</code></p>
<p>Step5: <code>rake db:seed</code></p>
<p>Step6: <code>rails s</code></p>

<h3>Administration access</h3>
<p><strong>E-mail:</strong>a@z.com</p>
<p><strong>password:</strong>admin</p>

<h3>API documentation</h3>
<p><code>current_user</code>: It will render current user (logged in user) information.</p>
<p><code>authorized?</code>: This method will check that user is logged or not.</p>
<p><code>admin?</code>: This method render a boolean that current user is admin or not.</p>
<p><code>is_not_admin?</code>: This method will check that current user is admin or not.If current user is not admin,this method prevents normal user(staff) to access administration section and redirect to home page</p>

<p><code>match_user</code>: This method is a private method and it is located in UsersController private section.It match current user with admin user and it prevent to  normal user to edit other user information.</p>
