 call s1
 print *,'pass'
 end
 module m1
   contains
   subroutine ss11(i)
   entry      ss12(i)
   entry      ss13(i)
   entry      ss14(i)
   entry      ss15(i)
   integer,allocatable,dimension(:)::a
   call sss1
   contains 
   subroutine sss1
   integer,save::x
   allocate(a(5))
   a=(/1,2,3,4,5/)
   if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (i/=1) then
   endif
   x= loc(a)
   end subroutine
   end subroutine
   subroutine ss21(i)
   entry      ss22(i)
   entry      ss23(i)
   entry      ss24(i)
   entry      ss25(i)
   integer,allocatable,dimension(:),save::a
   call sss2
   contains 
   subroutine sss2
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
   if(i==5) then
     allocate(a(5),stat=j)
     if (j==0)write(6,*) "NG"
     deallocate(a)
   endif
   end subroutine
   end subroutine
 end
 subroutine s1
  use m1
   do i=1,5; call ss11(i); end do
   do i=1,5; call ss12(i); end do
   do i=1,5; call ss13(i); end do
   do i=1,5; call ss14(i); end do
   do i=1,5; call ss15(i); end do
   do i=1,5; call ss21(i); end do
   do i=1,5; call ss22(i); end do
   do i=1,5; call ss23(i); end do
   do i=1,5; call ss24(i); end do
   do i=1,5; call ss25(i); end do
 end
