

subroutine sub01()

  integer,parameter :: ans=10000
  integer :: res

  res=0

!$omp parallel
!$omp do collapse(3) reduction(+:res)
  do l = 10, 1,-1
     do k = 10, 1,-1
        do j = 10, 1,-1
           do i = 10, 1,-1
              res = res + 1
           end do
        end do
     enddo
  enddo
!$omp end do
!$omp end parallel

  if(ans .eq. res) then
     print *,"no1 OK"
  else
     print *,"no2 NG",res
  endif


end subroutine sub01

subroutine sub02()

  integer,parameter :: ans=10000
  integer :: res

  res=0


  do l = 10, 1,-1
!$omp parallel
!$omp do collapse(3) reduction(+:res)
     do k = 11, 2,-1
        do j = 10, 1,-1
           do i = 13, 4,-1
              res = res + 1
           end do
        end do
     enddo
!$omp end do
!$omp end parallel
  enddo


  if(ans .eq. res) then
     print *,"no2 OK"
  else
     print *,"mp2 NG",res
  endif


end subroutine sub02


program main

  call sub01()
  call sub02()
  

end program main
