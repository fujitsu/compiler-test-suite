 module m1
 procedure(mfun) ::p1
 procedure(p1) ::p2
 contains
 function mfun(d1)
 integer :: mfun,d1
 mfun =d1 + 2
 end
 end

 use m1
 procedure(p1) ::p3
 if(p3(4) .ne. 7)print*,"101"
 print*,"pass"
 end
 

 function p3(d2)
 integer :: p3,d2
 p3=d2+3
 end function
