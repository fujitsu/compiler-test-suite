program main
  integer(kind=4),dimension(64) :: a,b,c,res
  call init(a,b,c,res)
  do i=1,2
     call test(a,b,c)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res)
  integer(kind=4),dimension(1:64) :: a,b,c,res

  do i=1,64
     a(i) = 0_4
     b(i) = i
     c(i) = i
     if ( i .gt. 64/2 ) then
        res(i) = i + 2
     else
        res(i) = i - 3
     endif
  enddo
end subroutine init


subroutine test(a,b,c)
  integer(kind=4), dimension(64) :: a,b,c

  do i=1,64
      if ((c(i) .gt. 64/2) .and. (c(i) .ne. 64/2)) then
         a(i) = b(i) + 2
      else
         a(i) = b(i) - 3 
      endif
  enddo
end subroutine test
