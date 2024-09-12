
subroutine sub01(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  real(kind=4) x(77),b(77)

  n = mask(77)
  do i=1,n
     
     x(i) = x(i) + 1
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = a(i) + x(i)
     else
        b(i) = b(i) + x(i)
     end if
  end do
end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  real(kind=4) x(77),b(77)

  n = mask(77)
  do i=1, n
     
     x(i) = x(i) + 1
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = a(i) + x(i)
     else
        b(i) = b(i) + x(i)
     end if
  end do
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=4) x(77)/77*0/,y(77)/77*0/,b(77)/77*1/,d(77)/77*1/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     a(i) = i/2
     c(i) = i/2
     b(i) = i*2
     d(i) = i*2
  end do
  call sub01(x,a,b,mask)
  call sub02(y,c,d,mask)
  do i=1,77
     if (x(i) .ne. y(i)) then
        write(6,*) x(i)
        write(6,*) y(i)
        stop
     endif
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
     if (b(i) .ne. d(i)) then
        write(6,*) b(i)
        write(6,*) d(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
