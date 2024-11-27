PROGRAM MAIN

interface 
 function eprc_ty(b,a)
  integer,intent(in),contiguous :: b(:,:)
  integer,INTENT(IN) :: a
  integer,pointer,contiguous :: eprc_ty(:,:)
 end function
end interface

if(all(fun(eprc_ty)/=4))print*,101
print*,'pass'

contains
function fun(dmy)
interface
 function dmy(b,a)
  integer,intent(in),contiguous :: b(:,:)
  integer,INTENT(IN) :: a
  integer,pointer :: dmy(:,:)
 end function
end interface

integer :: fun(2,2)

fun = dmy(reshape([1,1,1,1],[2,2]),3)
end function
END


function eprc_ty(b,a)
 integer,intent(in),contiguous :: b(:,:)
 integer,INTENT(IN) :: a
 integer,pointer,contiguous :: eprc_ty(:,:)
 allocate(eprc_ty(2,2))
 do i=1,2
  do j=1,2
   eprc_ty(i,j) = a + b(i,j)
  end do
 end do
END function
