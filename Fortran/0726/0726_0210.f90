 call s1
 print *,'pass'
 end
 subroutine s1
   do i=1,5
     call ss1(i)
   end do
   do i=1,5
     call ss2(i)
   end do
   contains
   subroutine ss1(i)
   integer,allocatable,dimension(:)::a
   integer,save::x
   allocate(a(5))
   a=(/1,2,3,4,5/)
   if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (i/=1) then
   endif
   x= loc(a)
   end subroutine
   subroutine ss2(i)
   integer,allocatable,dimension(:),save::a
   integer,save::x
   if (i==1) then
     allocate(a(5))
     x= loc(a)
   else
     allocate(a(5),stat=j)
     if (j==0)write(6,*) "NG"
   endif
   a=(/1,2,3,4,5/)
   if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
   end subroutine
 end
