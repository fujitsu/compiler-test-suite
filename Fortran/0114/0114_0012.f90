 module mod01
   type ty2
    integer,dimension(10) :: ik =1
   end type
  contains

   subroutine mod01_sub1()
     type (ty2) :: str1
     integer,dimension(10) :: k
     if (any(str1%ik.ne.(/(1,ii=1,10)/))) print *,'error'
   end subroutine

 end

 use mod01
 call mod01_sub1()
 print *,'PASS'
 end
