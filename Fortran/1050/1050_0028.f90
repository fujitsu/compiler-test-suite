


subroutine sub01()

  integer :: res
  integer,parameter :: ans=100
  res = 0
  
!$omp do collapse(2) reduction(+:res)
  do j = 1, 10
     do i = 1, 10

        res = res +1
     enddo
  enddo
!$omp end do

  if(res .eq. ans ) then
     print *,"OK"
  else 
     print *,"NG"
  end if

end subroutine sub01


program main

call sub01()

end program main
