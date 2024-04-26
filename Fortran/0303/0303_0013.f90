subroutine f(x,n,y)
  real*8 x(*),y(*)
  real*8 xx
  real*8,parameter::a0=0.1d0
  real*8,parameter::a1=0.01d0
  real*8,parameter::a2=0.001d0
  real*8,parameter::a3=0.0001d0
  real*8,parameter::a4=0.00001d0
  do i=1,n
    xx=x(i)
    y(i)=(((a4*xx+a3)*xx+a2)*xx+a1)*xx+a0
  end do
end subroutine

  real*8 x(10),y(10)
  integer ok_count
  ok_count = 0
  x = 1.0d0
  call f(x,10,y)
  do n = 1,10
    if (y(n) .eq. 0.11111d0) then
      ok_count = ok_count + 1
    endif
  enddo
  if (ok_count .eq. 10) then
    write(6,*) "ok"
  endif
end
