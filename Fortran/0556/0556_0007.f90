module module1
 integer:: n
 contains

 recursive class(*) function sub1(x)
 integer,target,intent(inout):: x
 pointer::sub1
 if (x < n) then
   x = n
 end if
 sub1=>x
end function sub1
end module module1

program main
 use module1
 integer:: x = 0
 class(*),pointer::ptr1
 n = 2
 ptr1=> sub1(x)
 select type (ptr1)
  type is (integer)
   if (ptr1 .EQ. 2) then
     print *,'PASS'
   else
     print *,'FAIL'
   endif     
 end select
end program main

