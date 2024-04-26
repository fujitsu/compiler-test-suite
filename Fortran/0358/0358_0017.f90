program main
  integer i
  integer,parameter::n=8
  integer*4 z(n)/1,2,3,4,5,6,7,8/
  integer*4 y
  y=5
  do i=1,n
     y=min(y,z(i))
  enddo
  if (y.eq.1) then
     write(6,*) "ok"
  else
     write(6,*) "ng",y
  endif
end program main
