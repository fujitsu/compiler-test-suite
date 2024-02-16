program main
  integer*8 j,b
  integer*1,dimension(20):: x,y
  b=3
  do j=1,13
     x(j)=j
     y(j)=j+1
  end do
  do j=1,2
     x(1)=x(1)+2 
     y(1)=y(1)+1
     if (b == 2) then
        y(1)=x(1)
        b=x(1)
     end if
  end do
  if (x(1) == 5) then
     print *,"OK"
  else
     print *,"NG",x(1)
  end if
end program main
