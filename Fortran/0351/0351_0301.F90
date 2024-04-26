program main
  real(kind=8),dimension(64) :: a,res
  logical(kind=4),dimension(64) :: b
  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo

  do i=1,64
     if(i .gt. 64/2) then
          if(i+1_4 .ne. res(i)) then
     	     print *, "NG"
          endif
     else
          if(0_4 .ne. res(i)) then
	     print *, "NG"
          endif
     endif
  enddo	
  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=8),dimension(64) :: a,res
  logical(kind=4),dimension(64) :: b

  do i=1,64
     a(i) = i+1_4
     res(i) = 0_4
     if(i .gt. 64/2) then
          b(i) = .TRUE.
     else
	  b(i) = .FALSE.
     endif
  enddo
end subroutine init


subroutine test(a,b,res)
  real(kind=8),dimension(64) :: a,res
  logical(kind=4),dimension(64) :: b

  do i=1,64
     if(b(i) .eqv. .TRUE.) then
       res(i) = a(i)
     endif
  enddo
end subroutine test
