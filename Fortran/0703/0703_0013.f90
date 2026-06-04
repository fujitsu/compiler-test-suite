!
!
 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  logical(2),parameter::t2=.true.,f2=.false.
  logical(8),parameter::t8=.true.,f8=.false.
  intrinsic ceiling
 end
 subroutine s1
  use m1
  i=1;j=3
  call x01(spread( (/t,f,t,f/),dim=i,ncopies=j))
  call x02(spread( (/t2,f2,t2,f2/),dim=i,ncopies=j))
  call x03(spread( (/t8,f8,t8,f8/),dim=i,ncopies=j))
   contains
     subroutine x01(ii)
      logical,dimension(:,:)::ii
      if (any(shape(ii)/=(/3,4/)))print *,'fail'
      if (any((/ii/).neqv.(/t,t,t,f,f,f,t,t,t,f,f,f/)))print *,'fail'
     end subroutine
     subroutine x02(ii)
      logical(2),dimension(:,:)::ii
      if (any(shape(ii)/=(/3,4/)))print *,'fail'
      if (any((/ii/).neqv.(/t,t,t,f,f,f,t,t,t,f,f,f/)))print *,'fail'
     end subroutine
     subroutine x03(ii)
      logical(8),dimension(:,:)::ii
      if (any(shape(ii)/=(/3,4/)))print *,'fail'
      if (any((/ii/).neqv.(/t,t,t,f,f,f,t,t,t,f,f,f/)))print *,'fail'
     end subroutine
end
