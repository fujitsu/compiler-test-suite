
module mod_data
  real(kind=8) x(77), y(77)
end module mod_data

subroutine sub01(a,b,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) z, a
  real(kind=8) b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .gt. b(i)) then
        x(i) = b(i)
     end if
     
     a = max(z,a)
  end do

end subroutine sub01

subroutine sub02(c,b,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) z, c
  real(kind=8) b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (y(i) .gt. b(i)) then
        y(i) = b(i)
     end if
     
     c = max(z,c)
  end do

end subroutine sub02

program main
  use mod_data
  real(kind=8) a/0/, c/0/
  real(kind=8) b(77)/77*1/
  integer(kind=8) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     b(i) = i/2
  end do
  call sub01(a,b,mask)
  call sub02(c,b,mask)
  if (a .ne. c) then
     write(6,*) a
     write(6,*) c
     stop
  endif
  do i=1,77
     if (x(i) .ne. y(i)) then
        write(6,*) x
        write(6,*) y
     endif
  enddo
  write(6,*) "ok"

end program main
