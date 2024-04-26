program main
  integer y(10)/10*0/
  integer x(10,10,10)/1000*0/
  i=3
  j=3
  k=3
  n = y(1)
  m = y(2)

  do i=1,n
     do j=1,m
        do k=1,10
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.3 .or. k.ne.3) then
     print *,"NG",i,j,k,x(1,1,1)
  else
     write(6,*) "OK"
  endif
end program main
