
subroutine sub01(x,a,b,mask)
  integer(kind=8) i,mask(77)
  logical(kind=8) z, a(77)
  real(kind=8) x, b(77)

  z = .false.
  n = mask(77)
  do i=1,n
     
     if (x .lt. b(i)) then
        x = b(i)
     end if
     
     a(i) = a(i) .and. z
  end do

end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=8) i,mask(77)
  logical(kind=8) z, a(77)
  real(kind=8) x, b(77)

  z = .false.
  n = mask(77)
  do i=1,n
     
     if (x .lt. b(i)) then
        x = b(i)
     end if
     
     a(i) = a(i) .and. z
  end do

end subroutine sub02

program main
  logical(kind=8) a(77)/77*.false./, c(77)/77*.false./
  real(kind=8) x/0/,y/0/,b(77)
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     b(i) = i/2
  end do
  call sub01(x,a,b,mask)
  call sub02(y,c,b,mask)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  do i=1,77
     if (a(i) .neqv. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
