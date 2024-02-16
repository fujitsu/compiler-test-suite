#define N 256

program main
  real(kind=2),dimension(N) :: a, dest

  call init(a,dest)

  do i=1,2
     call test2(dest, a)
  enddo
  do i=1,N
     if(dest(i) .ne. a(i)+1) then
        print *, "NG"
     endif
  enddo

  print *, "OK"

end program main

subroutine init(a,dest)
  real(kind=2),dimension(1:N) :: a, dest
  do i=1,N
     a(i) = i
     dest(i) = 0_8
  enddo
end subroutine init

subroutine test2(dest,a)
  real(kind=2), dimension(N) :: dest,a
  do i=1,N
     dest(i) = a(i) + 1
  enddo
end subroutine test2

