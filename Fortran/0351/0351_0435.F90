program main
  real(kind=8),dimension(64) :: dest
  real(kind=8) :: b

  call init(b,dest)

  do i=1,2
     call test42(dest, b)
  enddo
  do i=1,64
     if(dest(i) .ne. b) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(b,dest)
  real(kind=8),dimension(1:64) :: dest
  real(kind=8) :: b

  do i=1,64
     b = i
     dest(i) = 0_8
  enddo
end subroutine init


subroutine test42(dest,b)
  real(kind=8),dimension(64) :: dest
  real(kind=8) :: b

  do i=1,64
     dest(i) = b
  enddo
end subroutine test42
