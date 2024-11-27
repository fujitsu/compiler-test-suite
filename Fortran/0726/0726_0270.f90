 integer,dimension(3)::a
 integer,dimension(3)::b=(/1,2,3/)
 integer,dimension(3)::c
   interface
     subroutine ss1(a,b,c)
     integer,dimension(:)::a
     integer,dimension(:)::b
     integer,dimension(:)::c
     end subroutine
   end interface
 call ss1(a,b,c)
 print *,'pass'
 end
 subroutine ss1(a,b,c)
 integer,dimension(:)::a
 integer,dimension(:)::b
 integer,dimension(:)::c
   interface
     elemental subroutine elm_sub(a,b,c)
     integer,intent(out)::a
     integer,intent(in)::b
     integer,intent(out)::c
     end subroutine
   end interface
 call elm_sub(a,b,c)
 if (any(a/=(/2,3,4/)))write(6,*) "NG"
 if (any(c/=(/3,4,5/)))write(6,*) "NG"
 end 
 elemental subroutine elm_sub(a,b,c)
 integer,intent(out)::a
 integer,intent(in)::b
 integer,intent(out)::c
 a=b+1
 c=b+2
 end subroutine
