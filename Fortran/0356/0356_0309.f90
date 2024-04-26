program main
  integer y(5,10)/50*0/
  integer n1
  i=3
  k=3
  n1 = y(1,1)
  do k=1,n1
     do i=1,10
        y(k,i) = 1
     enddo
  enddo
  if (i.ne.3 .or. k.ne.1) then
     print *,"NG",i,k,y(1,1)
  else
     write(6,*) "OK"
  endif
end program main
