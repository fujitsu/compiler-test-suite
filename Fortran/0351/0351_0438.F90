program main
  integer(kind=4),dimension(64) :: a,dest
  integer(kind=4) :: res,i
      
  do i=1,2
      call init(a,res,64)
      dest(i) = 0_4
      call test(a,dest,i)
  enddo
  do i=1,2
      if(res .ne. dest(i)) then
         print *, "NG"
      endif
  enddo
  print *, "OK"
end program main

subroutine init(a,res,n1)
  integer(kind=4),dimension(1:n1) :: a
  integer(kind=4) :: res
  res = 0_4

  do i=1,n1
     a(i) = i
     res = res + i
  enddo
end subroutine init


subroutine test(a,dest,x)
  integer(kind=4), dimension(64) :: a,dest
  integer(kind=4) :: x


  do i=1,64
      dest(x) = dest(x) + a(i)
  enddo

end subroutine test
