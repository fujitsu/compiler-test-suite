program main
  integer y(10)/10*0/
  integer x/0/
  i=3
  k=3
  x = y(1)+2
  do k=1,x
     do i=1,10
        y(k) = 1
     enddo
  enddo

  if (i.ne.11 .or. k.ne.3) then
     print *,"NG",i,k,y(1)
  else
     write(6,*) "OK"
  endif

end program main
