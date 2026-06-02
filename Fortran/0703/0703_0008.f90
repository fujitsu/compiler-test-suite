!
!
 call s1
 print  *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  logical,parameter::t2=.true.,f2=.false.
  logical,parameter::t8=.true.,f8=.false.
 end
 subroutine s1
  use m1
  call x01(kind(logical(t2)))
  call x02(kind(logical(t8,2)))
  call x03(kind(logical(t8,4)))
  call x04(kind(logical(t2,8)))
  call x11((logical(t2)))
  call x12((logical(t8,2)))
  call x13((logical(t8,4)))
  call x14((logical(t2,8)))
   contains
     subroutine x01(i)
      if (i/=kind(1))print *,'fail'
     end subroutine
     subroutine x02(i)
      if (i/=2)print *,'fail'
     end subroutine
     subroutine x03(i)
      if (i/=4)print *,'fail'
     end subroutine
     subroutine x04(i)
      if (i/=8)print *,'fail'
     end subroutine
     subroutine x11(i)
      logical i
      if (i.neqv.t2)print *,'fail'
     end subroutine
     subroutine x12(i)
      logical(2) i
      if (i.neqv.t2)print *,'fail'
     end subroutine
     subroutine x13(i)
      logical(4) i
      if (i.neqv.t8)print *,'fail'
     end subroutine
     subroutine x14(i)
      logical(8) i
      if (i.neqv.t2)print *,'fail'
     end subroutine
end
 subroutine x(i)
   if (i(2.1)/=2) print *,'fail'
 end
