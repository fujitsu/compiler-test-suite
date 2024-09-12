module m1
 contains
 subroutine s1()
  integer::k1=10,k2=20
  !$omp parallel default(none)
   call foo( [ ( (k1+k2,k1 =1,2), k2=3,4)] )
  !$omp end parallel
  if(k1 /=10 .and. k2 /=20) print*,"102"
 end subroutine
 subroutine foo(dmy)
  integer::dmy(4)
  if(any(dmy /= [4,5,5,6]))print*,"101"
 end subroutine
end module

use m1
call s1
print*,"PASS"
end

