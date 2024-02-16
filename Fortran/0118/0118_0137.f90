subroutine foo(n,aa,bb)
  integer, intent(in) :: n
  integer i
  real*4, dimension(n), intent(out) :: aa
  real*4, dimension(n), intent(out) :: bb
  do i=1, n
     aa(i) = ALOG10(real(i, kind=4))
     bb(i) = LOG10(real(i, kind=4))
  end do
end subroutine foo

program main
  real*4, dimension(16):: aa
  real*4, dimension(16):: bb
  integer i
  
  call foo(5,aa,bb)
  
  do i=1, 5
     if ( aa(i) .ne. bb(i) ) then
        write (*, "(I2, f10.2, f10.2)") i, aa(i), bb(i)
     endif
  end do
  write(*,*) 'OK'
  
end program main


