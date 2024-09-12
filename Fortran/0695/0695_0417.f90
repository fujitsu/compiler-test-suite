
subroutine sub01(x,a,b,c)
  integer(kind=8) i,idx
  real(kind=8) z, a(77), c(77)
  logical(kind=8) x, b(77)

  idx = 1
  z = 1
  n = 77
  do i=1,n
     
     if(a(i) .le. z) then
        z = a(i)
        idx = i
     endif
     
     x = x .and. b(i)
  end do
  c = z + idx
end subroutine sub01

subroutine sub02(x,a,b,c)
  integer(kind=8) i,idx
  real(kind=8) z, a(77), c(77)
  logical(kind=8) x, b(77)

  idx = 1
  z = 1
  n = 77
  do i=1,n
     
     if(a(i) .le. z) then
        z = a(i)
        idx = i
     endif
     
     x = x .and. b(i)
  end do
  c = z + idx
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) res1(77)/77*0/, res2(77)/77*0/
  logical(kind=8) x/.true./,y/.true./,b(77)/77*.false./
  integer(kind=8) i
  do i=1,77
     a(i) = mod(i,3)
     c(i) = mod(i,3)
  end do
  call sub01(x,a,b,res1)
  call sub02(y,c,b,res2)
  if (x) then
     write(6,*) x
  endif
  if (y) then
     write(6,*) y
  endif
  do i=1,77
     if (res1(i) .ne. res2(i)) then
        write(6,*) i, res1(i)
        write(6,*) res2(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
