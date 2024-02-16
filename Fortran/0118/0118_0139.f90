program main
  real*4, dimension(16):: aa
  real*4, dimension(16):: bb

  call foo(5,aa,bb)

  do i=1, 5
    if ( aa(i) .ne. bb(i) ) then
      write (*, "(I2, f10.6, f10.6)") i, aa(i), bb(i)
    endif
  end do
  write(*,*) 'OK'

end program main

subroutine foo(n,aa,bb)
  integer, intent(in) :: n
  integer*8 i
  real*4, dimension(n), intent(out) :: aa
  real*4, dimension(n), intent(out) :: bb
  do i=1, n
    aa(i) = real(i, kind=4) ** 0.5
    bb(i) = sqrt(real(i, kind=4))
  end do
end subroutine foo

