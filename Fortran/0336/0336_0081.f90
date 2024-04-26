integer buffer(100)
do i = 1, 100
  buffer(i) = i  
  if(i == 10) then
    buffer(i) = 0
  endif
end do
print*,buffer(1),buffer(10),buffer(100)
end
