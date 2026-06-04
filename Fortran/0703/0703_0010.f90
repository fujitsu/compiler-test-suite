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
  logical,dimension(2)::ta=t,fa=f
  logical(2),dimension(2)::ta2=t,fa2=f
  logical(8),dimension(2)::ta8=t,fa8=f
  k2=2
  call x01(kind(merge(ta,fa,t2)),t)
  call x02(kind(merge(ta2,fa2,t2)),t)
  call x03(kind(merge(ta8,fa8,t2)),t)
  call x11(    (merge(ta,fa,t2)),t)
  call x12(    (merge(ta2,fa2,t2)),t)
  call x13(    (merge(ta8,fa8,t2)),t)
  call x11(    (merge(ta,fa,f2)),f)
  call x12(    (merge(ta2,fa2,f2)),f)
  call x13(    (merge(ta8,fa8,f2)),f)
   contains
     subroutine x01(i,j)
      logical j
      if (i/=kind(t))print *,'fail'
      if (kind(j)/=kind(t))print *,'fail'
     end subroutine
     subroutine x02(i,j)
      logical j
      if (i/=kind(t2))print *,'fail'
      if (kind(j)/=kind(t))print *,'fail'
     end subroutine
     subroutine x03(i,j)
      logical j
      if (i/=kind(t8))print *,'fail'
      if (kind(j)/=kind(t))print *,'fail'
     end subroutine
     subroutine x11(i,j)
      logical i(:)
      logical j
      if (any(shape(i)/=(/2/)))print *,'fail'
      if (any(i.neqv.(/j,j/)))print *,'fail'
     end subroutine
     subroutine x12(i,j)
      logical(2) i(:)
      logical j
      if (any(shape(i)/=(/2/)))print *,'fail'
      if (any(i.neqv.(/j,j/)))print *,'fail'
     end subroutine
     subroutine x13(i,j)
      logical(8) i(:)
      logical j
      if (any(shape(i)/=(/2/)))print *,'fail'
      if (any(i.neqv.(/j,j/)))print *,'fail'
     end subroutine
end
