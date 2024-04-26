program main
  integer y(10)/10*0/,z(6)/1,20,3,20,5,-2/
  integer x
  i=3
  j=3
  k=3
  x = y(1)
  do j=z(1),z(2),z(3)
     do k=z(4),z(5),-2
        do i=1,x
           y(k) = 1
        enddo
     enddo
  enddo

  if (i.ne.1 .or. j.ne.22 .or. k.ne.4) then
     print *,"NG",i,j,k,y(1)
  else
     write(6,*) "OK"
  endif
end program main
