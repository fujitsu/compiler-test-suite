program main
  integer y(10,10,10)/1000*0/
  integer x,z(6)/1,20,3,20,5,-2/
  i=3
  j=3
  k=3
  x = y(1,1,1)
  do j=z(1),z(2),3
     do k=z(4),z(5),-2
        do i=1,x
           y(k,j,i) = 1
        enddo
     enddo
  enddo
  if (i.ne.1 .or. j.ne.22 .or. k.ne.4) then
     print *,"NG",i,j,k,y(1,1,1)
  else
     write(6,*) "OK"
  endif
end program main
