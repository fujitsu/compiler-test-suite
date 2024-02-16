module m1

type ty
contains
procedure,nopass :: s1,s2,s3
generic :: gnr=>s1,s2,s3
end type
contains        
       subroutine s1(i)
       integer :: i
       i = i +2
       end subroutine 

       subroutine s2(i)
       real :: i
       i = i + 3
       end subroutine 

       subroutine s3(i)
       complex :: i
       i = (6,7)
       end subroutine 
end module
use m1
  type(ty) :: obj
  complex:: aa(2) = (2,3)
  aa(2) = (4,5)
  call obj%gnr(aa(2)%re)
  if(aa(2)%re .ne. 7) print*,"121"
  print*,"Pass"
end
