program main
  integer :: j
  integer y
  y=1
  do j = 1, 10
     
111  continue
     
     if (y .gt. 10) then
        
     else
        y = y+1
        goto 111
     endif
     
222 enddo
  
  print *,y
end program main
