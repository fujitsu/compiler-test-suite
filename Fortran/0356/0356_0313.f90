program main
  integer y(10)/10*0/
  integer x(10)/10*0/
  real z(10)/10*1/
  i=3
  j=3
  k=3
  m = y(1)
  do j=1,m
     do k=m+1,sin(z(j))*x(j)
        do i=1,10
           y(k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.1 .or. k.ne.3) then
     print *,"NG",i,j,k,y(1)
  else
     write(6,*) "OK"
  endif
end program main
