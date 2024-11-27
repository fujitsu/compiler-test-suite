   integer,allocatable,dimension(:)::a1
   integer,allocatable,dimension(:)::a2
   allocate(a1(5),a2(3))
   a1=(/1,2,3,4,5/)
   a2=(/1,2,3/)
   if (any(a1/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (any(a2/=(/1,2,3/)))write(6,*) "NG"
 print *,'pass'
 end
