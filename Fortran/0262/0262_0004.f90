 module m1
 procedure(mfun) ::p1
 procedure(p1) ::p2
 contains
 function mfun(d1)
 integer :: mfun,d1
 mfun =d1 + 2
 end function
 end module

 module m2
 use m1
 procedure(p2) ::p3
 end module
 
 call s()
 contains
 subroutine s
 use m2
 procedure(p3) ::p4
 if(p4(4) .ne. 9)print*,"101"
 print*,"pass"
 end subroutine
 end

 function p4(d2)
 integer :: p4,d2
 p4=d2+5
 end function
