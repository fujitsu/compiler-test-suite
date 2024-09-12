
subroutine sub01(a,mask)
  common /com1/ x,y
  integer(kind=8) i,mask(77),idx
  real(kind=8) z, a(77)
  real(kind=8) x,y

  z = 10
  n = mask(77)
  idx = 1
  do i=1,n
     
     x = x + 1
     
     if (a(i) .gt. z) then
        a(i) = z
        idx = i
     end if
  end do
  a = a + idx
end subroutine sub01

subroutine sub02(a,mask)
  common /com1/ x,y
  integer(kind=8) i,mask(77),idx
  real(kind=8) z, a(77)
  real(kind=8) x,y

  z = 10
  n = mask(77)
  idx = 1
  do i=1, n
     
     y = y + 1
     
     if (a(i) .gt. z) then
        a(i) = z
        idx = i
     end if
  end do
  a = a + idx
end subroutine sub02

program main
  common /com1/ x,y
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) x,y
  integer(kind=8) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
     a(i) = i * 3
     c(i) = i * 3
  end do
  call sub01(a,mask)
  call sub02(c,mask)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  do i=1,77
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
