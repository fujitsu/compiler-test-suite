
subroutine sub01(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) z, a
  real(kind=8) x(77), b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .gt. b(i)) then
        x(i) = b(i)
     end if
     
     a = min(z,a)
  end do

end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) z, a
  real(kind=8) x(77), b(77)

  z = 1
  n = mask(77)
  do i=1,n
     
     if (x(i) .gt. b(i)) then
        x(i) = b(i)
     end if
     
     a = min(z,a)
  end do

end subroutine sub02

program main
  real(kind=8) a/0/, c/0/
  real(kind=8) x(77)/77*0/,y(77)/77*0/,b(77)/77*1/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     b(i) = -(i/2)
  end do
  call sub01(x,a,b,mask)
  call sub02(y,c,b,mask)
  if (a .ne. c) then
     write(6,*) a
     write(6,*) c
     stop
  endif
  do i=1,77
     if (x(i) .ne. y(i)) then
        write(6,*) x(i)
        write(6,*) y(i)
     endif
  enddo
  write(6,*) "ok"

end program main
