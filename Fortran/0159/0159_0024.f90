 module H
   integer,allocatable    :: a3
   integer,allocatable:: d1
   integer aaa
 end module H

 module K
   use H,only:b3=>a3
 end module K

 module P
   use H,only:f1=>d1
 end module P

 subroutine s1()
   use H
   use K
   use P
 end subroutine s1

 call s1()
 print *,'pass'
 end
