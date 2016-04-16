1.  How to add class in text_field_tag in  using form_tag ?
 solution: 
 use '' or nil
   <%= text_field_tag :email,'',class: 'form-control',placeholder: 'E-mail' %>
   or,
   <%= text_field_tag :email,nil,class: 'form-control',placeholder: 'E-mail' %>