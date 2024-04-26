program main
  integer y(10)/10*0/
  integer x(10)/10*0/
  i=3
  j=3
  k=3
  do j=1,10
     do k=1,x(j)
        do i=1,10
           y(k) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.11 .or. k.ne.1) then
     print *,"NG",i,j,k,y(1)
  else
     write(6,*) "OK"
  endif
end program main
