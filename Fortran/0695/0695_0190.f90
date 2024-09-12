subroutine sub01(a,mask)
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) a(77)

  idx = 1
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        a(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if(mod(mask(i),4) .eq. 0) then
        a(i) = i*2
        idx(i) = idx(i) + 2
     endif
  end do
  a = a + idx
end subroutine sub01

subroutine sub02(a,mask)
  integer(kind=8) i,idx(77),mask(77)
  real(kind=8) a(77)

  idx = 1
  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        a(i) = i
        idx(i) = idx(i) + 1
     endif
     
     if(mod(mask(i),4) .eq. 0) then
        a(i) = i*2
        idx(i) = idx(i) + 2
     endif
  end do
  a = a + idx
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
  end do
  call sub01(a,mask)
  call sub02(c,mask)
  do i=1,77
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
