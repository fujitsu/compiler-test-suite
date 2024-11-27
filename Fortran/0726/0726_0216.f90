 call s1
 print *,'pass'
 end
 module m0
   integer,allocatable,dimension(:)::a41,a42,a43
   integer,allocatable,dimension(:),save::a44,a45,a46
 end
 module m1
   use m0
   integer,allocatable,dimension(:)::a11,a12,a13
   integer,allocatable,dimension(:),save::a14,a15,a16
   contains
   subroutine ss11(i,j,k)
   use m0
   entry      ss12(i,j,k)
   entry      ss13(i,j,k)
   entry      ss14(i,j,k)
   entry      ss15(i,j,k)
   integer,allocatable,dimension(:)::a21,a22,a23
   integer,allocatable,dimension(:),save::a24,a25,a26
   if (.not.allocated(a11))write(6,*) "NG"
   if (.not.allocated(a12))write(6,*) "NG"
   if (.not.allocated(a13))write(6,*) "NG"
   if (.not.allocated(a14))write(6,*) "NG"
   if (.not.allocated(a15))write(6,*) "NG"
   if (.not.allocated(a16))write(6,*) "NG"
   if (.not.allocated(a41))write(6,*) "NG"
   if (.not.allocated(a42))write(6,*) "NG"
   if (.not.allocated(a43))write(6,*) "NG"
   if (.not.allocated(a44))write(6,*) "NG"
   if (.not.allocated(a45))write(6,*) "NG"
   if (.not.allocated(a46))write(6,*) "NG"
   if (     allocated(a21))write(6,*) "NG"
   if (     allocated(a22))write(6,*) "NG"
   if (     allocated(a23))write(6,*) "NG"
   allocate (a21(2),a22(2),a23(2))
   if (i==1 .and. j==1 .and. k==0) then
     if (     allocated(a24))write(6,*) "NG"
     if (     allocated(a25))write(6,*) "NG"
     if (     allocated(a26))write(6,*) "NG"
     allocate (a24(2),a25(2),a26(2))
   else 
     if (.not.allocated(a24))write(6,*) "NG"
     if (.not.allocated(a25))write(6,*) "NG"
     if (.not.allocated(a26))write(6,*) "NG"
   endif
   call sss1
   contains 
   subroutine sss1
   use m0
   integer,allocatable,dimension(:)::a31,a32,a33
   integer,allocatable,dimension(:),save::a34,a35,a36
   if (.not.allocated(a11))write(6,*) "NG"
   if (.not.allocated(a12))write(6,*) "NG"
   if (.not.allocated(a13))write(6,*) "NG"
   if (.not.allocated(a14))write(6,*) "NG"
   if (.not.allocated(a15))write(6,*) "NG"
   if (.not.allocated(a16))write(6,*) "NG"
   if (.not.allocated(a21))write(6,*) "NG"
   if (.not.allocated(a22))write(6,*) "NG"
   if (.not.allocated(a23))write(6,*) "NG"
   if (.not.allocated(a24))write(6,*) "NG"
   if (.not.allocated(a25))write(6,*) "NG"
   if (.not.allocated(a26))write(6,*) "NG"
   if (.not.allocated(a41))write(6,*) "NG"
   if (.not.allocated(a42))write(6,*) "NG"
   if (.not.allocated(a43))write(6,*) "NG"
   if (.not.allocated(a44))write(6,*) "NG"
   if (.not.allocated(a45))write(6,*) "NG"
   if (.not.allocated(a46))write(6,*) "NG"
   if (     allocated(a31))write(6,*) "NG"
   if (     allocated(a32))write(6,*) "NG"
   if (     allocated(a33))write(6,*) "NG"
   allocate (a31(2),a32(2),a33(2))
   if (i==1 .and. j==1 .and. k==0) then
     if (     allocated(a34))write(6,*) "NG"
     if (     allocated(a35))write(6,*) "NG"
     if (     allocated(a36))write(6,*) "NG"
     allocate (a34(2),a35(2),a36(2))
   else 
     if (.not.allocated(a34))write(6,*) "NG"
     if (.not.allocated(a35))write(6,*) "NG"
     if (.not.allocated(a36))write(6,*) "NG"
   endif
   end subroutine
   end subroutine
end
 subroutine s1
  use m0;use m1
   integer,allocatable,dimension(:)::a51,a52,a53
   integer,allocatable,dimension(:),save::a54,a55,a56
   allocate (a51(2),a52(2),a53(2))
   allocate (a54(2),a55(2),a56(2))
   do j=1,2
     call zz(j)
   end do
 end
 subroutine zz(j)
  use m0;use m1
   integer,allocatable,dimension(:)::a61,a62,a63
   integer,allocatable,dimension(:),save::a64,a65,a66
   if (     allocated(a61))write(6,*) "NG"
   if (     allocated(a62))write(6,*) "NG"
   if (     allocated(a63))write(6,*) "NG"
   if (j==1) then
   if (     allocated(a64))write(6,*) "NG"
   if (     allocated(a65))write(6,*) "NG"
   if (     allocated(a66))write(6,*) "NG"
   if (     allocated(a11))write(6,*) "NG"
   if (     allocated(a12))write(6,*) "NG"
   if (     allocated(a13))write(6,*) "NG"
   if (     allocated(a14))write(6,*) "NG"
   if (     allocated(a15))write(6,*) "NG"
   if (     allocated(a16))write(6,*) "NG"
   if (     allocated(a41))write(6,*) "NG"
   if (     allocated(a42))write(6,*) "NG"
   if (     allocated(a43))write(6,*) "NG"
   if (     allocated(a44))write(6,*) "NG"
   if (     allocated(a45))write(6,*) "NG"
   if (     allocated(a46))write(6,*) "NG"
   else
   if (.not.allocated(a64))write(6,*) "NG"
   if (.not.allocated(a65))write(6,*) "NG"
   if (.not.allocated(a66))write(6,*) "NG"
   if (.not.allocated(a11))write(6,*) "NG"
   if (.not.allocated(a12))write(6,*) "NG"
   if (.not.allocated(a13))write(6,*) "NG"
   if (.not.allocated(a14))write(6,*) "NG"
   if (.not.allocated(a15))write(6,*) "NG"
   if (.not.allocated(a16))write(6,*) "NG"
   if (.not.allocated(a41))write(6,*) "NG"
   if (.not.allocated(a42))write(6,*) "NG"
   if (.not.allocated(a43))write(6,*) "NG"
   if (.not.allocated(a44))write(6,*) "NG"
   if (.not.allocated(a45))write(6,*) "NG"
   if (.not.allocated(a46))write(6,*) "NG"
   endif
   allocate (a61(2),a62(2),a63(2))
   if (j==1) then
     allocate (a64(2),a65(2),a66(2))
   endif
   if (j==1) then
     allocate (a41(2),a42(2),a43(2))
     allocate (a44(2),a45(2),a46(2))
   endif
   if (j==1) then
     allocate (a11(2),a12(2),a13(2))
     allocate (a14(2),a15(2),a16(2))
   endif
   do i=1,2; call ss11(i,j,0); end do
   do i=1,2; call ss12(i,j,1); end do
   do i=1,2; call ss13(i,j,1); end do
   do i=1,2; call ss14(i,j,1); end do
   do i=1,2; call ss15(i,j,1); end do
 end
