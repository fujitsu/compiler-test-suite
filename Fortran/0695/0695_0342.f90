
module mod_data
  real(kind=8) x, y
end module mod_data

subroutine sub01(a,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) a

  n = mask(77)
  do i=1,n
     
     x = x + 1
     
     a = a + 1
  end do
end subroutine sub01

subroutine sub02(a,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) a

  n = mask(77)
  do i=1, n
     
     y = y + 1
     
     a = a + 1
  end do
end subroutine sub02

program main
  use mod_data
  real(kind=8) a/0/, c/0/
  integer(kind=8) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     a = i/2
     c = i/2
  end do
  call sub01(a,mask)
  call sub02(c,mask)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  if (a .ne. c) then
     write(6,*) a
     write(6,*) c
  endif
  write(6,*) "ok"

end program main