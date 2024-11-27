PROGRAM MAIN

interface 
 function eprc_ty(b,a)
  integer,intent(in),contiguous :: b(:,:)
  integer,INTENT(IN) :: a
  integer,pointer :: eprc_ty(:,:)
 end function
end interface

if(all(eprc_ty(reshape([1,1,1,1],[2,2]),3)/=4)) print*,101
print*,'pass'
END


function eprc_ty(b,a)
 integer,intent(in) :: b(:,:)
 integer,INTENT(IN) :: a
 integer,pointer :: eprc_ty(:,:)
 allocate(eprc_ty(2,2))
 do i=1,2
  do j=1,2
   eprc_ty(i,j) = a + b(i,j)
  end do
 end do
END function
