 call s1
 print *,'pass'
 end
 subroutine s1
 logical,parameter::t=.true.,f=.false.
 logical,dimension(3,2)::x=reshape((/t,f,f,t,t,f/),(/3,2/))
 integer,dimension(3,2)::y=-1
 call sub(x,y)
 if(any((/y/)/=(/1,-1,-1,1,1,-1/)))write(6,*) "NG"
 contains
 subroutine sub(x,y)
 logical,dimension(:,:)::x
 integer,dimension(:,:)::y
 where (x)
   y=1
 end where
 end subroutine
 end
