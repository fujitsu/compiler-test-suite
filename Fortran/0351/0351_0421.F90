program main
  integer(kind=4),dimension(64) :: a, dest
  integer(kind=4) :: b

  call init(a,b,dest)

  do i=1,2
     call test5(dest, a, b)
  enddo
  do i=1,64
     if(dest(i) .ne. a(i)+b) then
        print *, "NG"
     endif
  enddo
  print *, "OK"

end program main

subroutine init(a,b,dest)
  integer(kind=4),dimension(1:64) :: a, dest
  integer(kind=4) :: b

  do i=1,64
     a(i) = i
     b = i
     dest(i) = 0_4
  enddo
end subroutine init


subroutine test5(dest,a, b)
  integer(kind=4) :: b
  integer(kind=4), dimension(64) :: dest,a

  do i=1,64
     dest(i) = a(i) + b
  enddo
end subroutine test5

