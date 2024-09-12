
subroutine sub01(x,a,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) x

  z = 1
  n = mask(77)
  do i=1,n
     
     x = x + 1
     
     if (a(i) .gt. z) then
        a(i) = z
     end if
  end do
end subroutine sub01

subroutine sub02(x,a,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) z, a(77)
  real(kind=8) x

  z = 1
  n = mask(77)
  do i=1, n
     
     x = x + 1
     
     if (a(i) .gt. z) then
        a(i) = z
     end if
  end do
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) x/0/,y/0/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     a(i) = i / 3
     c(i) = i / 3
  end do
  call sub01(x,a,mask)
  call sub02(y,c,mask)
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
