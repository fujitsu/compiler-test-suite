integer buffer(5)
j = 1
do i = 1, 4
  buffer(j) = i
  if(i == 4) then
    j = j + 1
    buffer(j) = 0
  endif
end do
if (buffer(1)/=4)print *,'error'
print *,'pass'
end
