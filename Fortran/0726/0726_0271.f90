 integer,dimension(3)::b=(/1,2,3/)
   interface
     subroutine ss1(b)
     integer,dimension(:)::b
     end subroutine
   end interface
 call ss1(b)
 print *,'pass'
 end
 subroutine ss1(b)
 integer,dimension(:)::b
   interface
     elemental function elm_fun(b)
     integer,intent(in)::b
     integer           ::elm_fun
     end function
   end interface
 if (any(elm_fun(b)/=(/2,3,4/)))write(6,*) "NG"
 end 
 elemental function elm_fun(b)
 integer,intent(in)::b
 integer           ::elm_fun
 elm_fun=b+1
 end function
