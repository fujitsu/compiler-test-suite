integer:: x(10,12)=4

if ((size(x,1)==10) .and. (size(x,2)==12)) then
  print *,'pass'
else
  call errtra
end if
end
