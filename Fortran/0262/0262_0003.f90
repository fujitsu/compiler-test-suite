 module m1
 procedure(sub) ::p1
 procedure(p1) ::p2
 contains
 subroutine sub(d1)
 integer :: d1
 d1 =d1 + 2
 end subroutine
 end module

 module m2
 use m1
 procedure(p2) ::p3
 end module
 
 use m2
 integer :: act=2
 call p3(act)
 if(act .ne. 7)print*,"101"
 print*,"pass"
 end

 subroutine p3(d2)
 integer :: d2
 d2 = d2+5
 end subroutine
