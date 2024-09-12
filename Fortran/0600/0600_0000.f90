module m1
 contains
 subroutine s1()
  !$omp parallel default(none)
   call foo( [ (k,k =1,2 )] )
  !$omp end parallel
 end subroutine
 subroutine foo(dmy)
  integer::dmy(2)
  if(any(dmy /= [1,2]))print*,"101"
 end subroutine
end module

use m1
call s1
print*,"PASS"
end

