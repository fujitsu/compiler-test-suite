program main
  real(kind=4),dimension(512) :: a
  do i=1,2
     call test(a)
  enddo
  do i=1,512
     if(a(i) .ne. 1._4) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main



subroutine test(a)
  real(kind=4), dimension(512) :: a


  do i=1,512
     a(i) = 1._4
  enddo
end subroutine test
