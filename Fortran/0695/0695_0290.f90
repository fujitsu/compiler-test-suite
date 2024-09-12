
subroutine sub01(x,a,mask)
  integer(kind=8) i,mask(77)
  logical(kind=8) z, a(77)
  real(kind=8) x(77)

  z = .true.
  n = mask(77)
  do i=1,n
     
     x(i) = x(i) + 1
     
     a(i) = a(i) .and. z
  end do
end subroutine sub01

subroutine sub02(x,a,mask)
  integer(kind=8) i,mask(77)
  logical(kind=8) z, a(77)
  real(kind=8) x(77)

  z = .true.
  n = mask(77)
  do i=1, n
     
     x(i) = x(i) + 1
     
     a(i) = a(i) .and. z
  end do
end subroutine sub02

program main
  logical(kind=8) a(77)/77*.false./, c(77)/77*.false./
  real(kind=8) x(77)/77*0/,y(77)/77*0/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
  end do
  call sub01(x,a,mask)
  call sub02(y,c,mask)
  do i=1,77
     if (x(i) .ne. y(i)) then
        write(6,*) x(i)
        write(6,*) y(i)
        stop
     endif
     if (a(i) .neqv. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
