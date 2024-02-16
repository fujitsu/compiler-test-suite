#define N 256

program main
  real(kind=2),dimension(N) :: dest

  call init(dest)

  do i=1,2
     call test1(dest)
  enddo
  do i=1,N
     if(dest(i) .ne. 1) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(dest)
  real(kind=2),dimension(1:N) :: dest
  do i=1,N
     dest(i) = 0_8
  enddo
end subroutine init

subroutine test1(dest)
  real(kind=2), dimension(N) :: dest
  do i=1,N
     dest(i) = 1
  enddo
end subroutine test1


