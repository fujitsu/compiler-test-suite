program main
  integer y(10)/10*0/
  integer x,z(4)/1,10,1,10/
  i=3
  j=3
  k=3
  x = y(1)
  do j=z(1),z(2)
     do k=z(3),z(4)
        do i=1,x
           y(k) = 1
        enddo
     enddo
  enddo

  if (i.ne.1 .or. j.ne.11 .or. k.ne.11) then
     print *,"NG",i,j,k,y(1)
  else
     write(6,*) "OK"
  endif
end program main
