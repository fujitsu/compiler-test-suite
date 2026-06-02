!
!
 call s1
 print  *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  logical(2),parameter::t2=.true.,f2=.false.
  logical(8),parameter::t8=.true.,f8=.false.
 end
 subroutine s1
  use m1
  logical(2):: a1(2,3),b1(3,2)
  logical(8):: a2(2,3),b2(3,2)
  logical   :: a3(2,3),b3(3,2)
  a1=f;b1=f; a2=f;b2=f; a3=f;b3=f
  call x01(kind(matmul(a1,b1)))
  call x02(kind(matmul(a2,b2)))
  call x03(kind(matmul(a3,b3)))
  call x11(    (matmul(a1,b1)))
  call x12(    (matmul(a2,b2)))
  call x13(    (matmul(a3,b3)))
   contains
     subroutine x01(i)
      if (i/=kind(t2))print *,'fail'
     end subroutine
     subroutine x02(i)
      if (i/=8)print *,'fail'
     end subroutine
     subroutine x03(i)
      if (i/=kind(t))print *,'fail'
     end subroutine
     subroutine x11(i)
      logical(2),dimension(:,:):: i
      if (any(i.neqv.f8))print *,'fail'
      if (any(shape(i)/=(/2,2/)))print *,'fail'
     end subroutine
     subroutine x12(i)
      logical(8),dimension(:,:):: i
      if (any(i.neqv.f8))print *,'fail'
      if (any(shape(i)/=(/2,2/)))print *,'fail'
     end subroutine
     subroutine x13(i)
      logical,dimension(:,:):: i
      if (any(i.neqv.f8))print *,'fail'
      if (any(shape(i)/=(/2,2/)))print *,'fail'
     end subroutine
end
