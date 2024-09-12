integer :: x(20,10)=10

if((size(x,1).eq.20) .and. (size(x,2).eq.10)) then
  print *,'pass'
else
  call errtra
end if
end
