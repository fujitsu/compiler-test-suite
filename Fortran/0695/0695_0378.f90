
subroutine sub01(a,mask)
  common /com1/ x,y
  integer(kind=8) i,mask(77)
  logical(kind=8) z, a(77)
  real(kind=8) x,y

  z = .true.
  n = mask(77)
  do i=1,n
     
     x = x + 1
     
     a(i) = a(i) .neqv. z
  end do
end subroutine sub01

subroutine sub02(a,mask)
  common /com1/ x,y
  integer(kind=8) i,mask(77)
  logical(kind=8) z, a(77)
  real(kind=8) x,y

  z = .true.
  n = mask(77)
  do i=1, n
     
     y = y + 1
     
     a(i) = a(i) .neqv. z
  end do
end subroutine sub02

program main
  common /com1/ x,y
  logical(kind=8) a(77)/77*.false./, c(77)/77*.false./
  real(kind=8) x,y
  integer(kind=8) i,mask(77)
  x = 0
  y = 0
  do i=1,77
     mask(i) = i
  end do
  call sub01(a,mask)
  call sub02(c,mask)
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
