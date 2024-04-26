program main
  real(kind=4),dimension(64) :: a,b,c,res
  call init(a,b,c)
  do i=1,2
     call test(a,b,c,res)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c)
  real(kind=4),dimension(64) :: a,b,c

  do i=1,64
     a(i) = i+1.0_4
     b(i) = i
     c(i) = 2.0_4
  enddo
end subroutine init


subroutine test(a,b,c,res)
  real(kind=4), dimension(64) :: a,b,c,res
  real(kind=4)::n
  n = 2.0_4

  do i=1,64
     if(c(i).eq. n) then
       res(i) = a(i)
     else
       res(i) = b(i)
     endif
  enddo
end subroutine test
