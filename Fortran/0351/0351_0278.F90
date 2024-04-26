program main
  real(kind=4),dimension(64) :: res,a,b
  call init(res,a,b)
  do i=1,2
     call test(res,a,b)
  enddo
  do i=1,64
     if(1.0_4 .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(res,a,b)
  real(kind=4),dimension(64) :: res,a,b

  do i=1,64
     res(i) = 0
     a(i) = real(i+1_4, kind=4)
     b(i) = real(i, kind=4)
  enddo
end subroutine init


subroutine test(res,a,b)
  real(kind=4), dimension(64) :: res,a,b
  real(kind=4) :: tmp

  do i=1,64
     if(a(i) .eq. b(i)) then
       tmp = 0.0_4
     else
       tmp = 1.0_4
     endif
     res(i) = tmp
  enddo
end subroutine test
