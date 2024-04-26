program main
  integer(kind=4),dimension(64) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res)
  integer(kind=4),dimension(1:64) :: a,b,res

  do i=1,64
     a(i) = 0.
     if (i .gt. 64/2) then
        b(i) = i
     else
        b(i) = -i
     endif
     res(i) = i
  enddo
end subroutine init


subroutine test(a,b)
  integer(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = abs(b(i))
  enddo
end subroutine test
