#define N 256

program main
  real(kind=2),dimension(N) :: a,res
  logical(kind=4),dimension(N) :: b
  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo
  do i=1,N
     if(i .gt. N/2) then
          if(i+1_2 .ne. res(i)) then
             print *, "NG"
          endif
     else
          if(0_2 .ne. res(i)) then
             print *, "NG"
          endif
     endif
  enddo	
  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=2),dimension(N) :: a,res
  logical(kind=4),dimension(N) :: b
  do i=1,N
     a(i) = i+1_2
     res(i) = 0_2
     if(i .gt. N/2) then
          b(i) = .TRUE.
     else
	  b(i) = .FALSE.
     endif
  enddo
end subroutine init

subroutine test(a,b,res)
  real(kind=2),dimension(N) :: a,res
  logical(kind=4),dimension(N) :: b
  do i=1,N
     if(b(i) .eqv. .TRUE.) then
       res(i) = a(i)
     endif
  enddo
end subroutine test
