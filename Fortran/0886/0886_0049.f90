PROGRAM MAIN

interface 
 subroutine eprc_ty(a,b)
  integer,intent(in),contiguous :: b(:,:)
  integer,INTENT(IN) :: a
  integer,pointer :: eprc(:,:)
 end subroutine
end interface

call eprc_ty(3,reshape([1,1,1,1],[2,2]))
print*,'pass'
END


subroutine eprc_ty(a,b)
 integer,intent(in) :: b(:,:)
 integer,INTENT(IN) :: a
 integer,pointer :: eprc(:,:)
 allocate(eprc(2,2))
 do i=1,2
  do j=1,2
   eprc(i,j) = a + b(i,j)
  end do
 end do

if(all(eprc /=4)) print*,101
END subroutine
