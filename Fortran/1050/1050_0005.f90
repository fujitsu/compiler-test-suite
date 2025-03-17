



subroutine sub01()
  integer :: res1,res2,res3
  integer,parameter :: ans=10000
  integer :: flag

  res1=0
  res2=0
  res3=0

  flag=0

  do l = 1, 10
!$omp do collapse(3) reduction(+:res1)
     do k = 1, 10
        do j = 10, 1,-1
           do i = 1, 10
              res1=res1+1
           end do
        end do
     enddo
!$omp end do
  enddo



  do l = 1, 10
!$omp do collapse(2) reduction(+:res2)
     do k = 1, 10
        do j = 10, 1,-1
           do i = 1, 10
              res2=res2+1
           end do
        end do
     enddo
!$omp end do
  enddo



!$omp do collapse(4) reduction(+:res3)
  do l = 10, 1,-1
     do k = 10, 1,-1
        do j = 10, 1,-1
           do i = 10, 1,-1
              res3=res3+1
           end do
        end do
     enddo
  enddo
!$omp end do


  if(res1 .ne. res2) then
     flag = 1
  end if
  if (res2 .ne. res3) then
     flag = 2
  end if
  if (res3 .ne. ans) then
     flag = 4    
  end if


  if(flag .eq. 0) then
     print *,"OK"
  else
     print *,"NG",flag
  endif
     

end subroutine sub01


program main

  call sub01()
  
end program main
