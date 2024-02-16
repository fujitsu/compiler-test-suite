#define N 256

program main
  real(kind=2),dimension(N) :: dest
  real(kind=2) :: b

  interface
      subroutine test41(dest, b)
      real(kind=2),dimension(N) :: dest
      real(kind=2),value :: b
      end subroutine test41
  end interface

  call init(b,dest)

  do i=1,2
     call test41(dest, b)
  enddo
  do i=1,N
     if(dest(i) .ne. b) then
        print *, "NG"
     endif
  enddo

  print *, "OK"

end program main

subroutine init(b,dest)
  real(kind=2),dimension(1:N) :: dest
  real(kind=2) :: b
  do i=1,N
     b = i
     dest(i) = 0_8
  enddo
end subroutine init

subroutine test41(dest,b)
  real(kind=2),dimension(N) :: dest
  real(kind=2),value :: b
  do i=1,N
     dest(i) = b
  enddo
end subroutine test41

