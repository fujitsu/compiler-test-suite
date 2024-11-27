 call s1
 print *,'pass'
 end
 module m1
   integer,allocatable,dimension(:)::a1,a2,a3
   contains
   subroutine ss11(i)
   entry      ss12(i)
   entry      ss13(i)
   entry      ss14(i)
   entry      ss15(i)
   call sss1
   contains 
   subroutine sss1
   if (.not.allocated(a1))write(6,*) "NG"
   if (.not.allocated(a2))write(6,*) "NG"
   if (.not.allocated(a3))write(6,*) "NG"
   allocate(a1(5),stat=j); if (j==0)write(6,*) "NG"
   allocate(a2(5),stat=j); if (j==0)write(6,*) "NG"
   allocate(a3(5),stat=j); if (j==0)write(6,*) "NG"
   a1=(/1,2,3,4,5/);a2=a1;a3=a1
   if (any(a1/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (any(a2/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (any(a3/=(/1,2,3,4,5/)))write(6,*) "NG"
   k=i
   end subroutine
   end subroutine
end
module m2
   integer,allocatable,dimension(:),save::a,b
   integer,allocatable,dimension(:)::e1,e2,e3
   contains
   subroutine ss21(i)
   entry      ss22(i)
   entry      ss23(i)
   entry      ss24(i)
   entry      ss25(i)
   call sss2
   contains 
   subroutine sss2
   if (.not.allocated(e1))write(6,*) "NG"
   if (.not.allocated(e2))write(6,*) "NG"
   if (.not.allocated(e3))write(6,*) "NG"
   allocate(e1(5),e2(5),e3(5),stat=j);if (j==0)write(6,*) "NG"
   e1=(/1,2,3,4,5/);e2=e1;e3=e1
   if (any(e1/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (any(e2/=(/1,2,3,4,5/)))write(6,*) "NG"
   if (any(e3/=(/1,2,3,4,5/)))write(6,*) "NG"
   allocate(a(5),stat=j); if (j==0)write(6,*) "NG"
   allocate(b(5),stat=j); if (j==0)write(6,*) "NG"
   a=(/1,2,3,4,5/); if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
   b=(/1,2,3,4,5/); if (any(b/=(/1,2,3,4,5/)))write(6,*) "NG"
   k=i
   end subroutine
   end subroutine
 end
 subroutine s1
  use m1;use m2
  allocate(a1(5),a2(5),a3(5),e1(5),e2(5),e3(5),a(5),b(5))
   do i=1,2
     call zz
   end do
 end
 subroutine zz
  use m1;use m2
   do i=1,2; call ss11(i); end do
   do i=1,2; call ss12(i); end do
   do i=1,2; call ss13(i); end do
   do i=1,2; call ss14(i); end do
   do i=1,2; call ss15(i); end do
   do i=1,2; call ss21(i); end do
   do i=1,2; call ss22(i); end do
   do i=1,2; call ss23(i); end do
   do i=1,2; call ss24(i); end do
   do i=1,2; call ss25(i); end do
 end
