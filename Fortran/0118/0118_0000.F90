subroutine sub(a)
  real(8),dimension(1:10000,1:6) :: a

  do i=1,10000
    a(i,:) = real(i,kind=8)
  enddo
end subroutine

program main
  real(8),dimension(1:10000,1:6) :: a
  a = reshape((/(i, i=1,10000*6)/), (/10000,6/))
  call sub(a)
  do i=1,10000
    do j=1,6
     if(a(i,j) .ne. real(i,kind=8)) then
        print *, "NG"
     endif
    enddo
  enddo
  print *, "OK"
end program main

