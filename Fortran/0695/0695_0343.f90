
subroutine sub01(x,a,mask)
  integer(kind=4) i,mask(77)
  real(kind=4) a
  real(kind=8) x

  n = mask(77)
  do i=1,n
     
     x = x + 1
     
     a = a + 1
  end do
end subroutine sub01

subroutine sub02(x,a,mask)
  integer(kind=4) i,mask(77)
  real(kind=4) a
  real(kind=8) x

  n = mask(77)
  do i=1, n
     
     x = x + 1
     
     a = a + 1
  end do
end subroutine sub02

program main
  real(kind=4) a/0/, c/0/
  real(kind=8) x/0/,y/0/
  integer(kind=4) i,mask(77)
  do i=1,77
     mask(i) = i
  end do
  call sub01(x,a,mask)
  call sub02(y,c,mask)
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
