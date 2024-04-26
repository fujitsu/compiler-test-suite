character(len =5) :: chr(5,5)

i = 1
j =2
chr(2,2) = 'aaaaa'
chr(3,3) = 'bbbbb'
associate(aa=>chr(j,:i+4)(:))
i = i-1
j = j-1
if(aa(2) .EQ. 'aaaaa') then
  print*,'pass'
else
  print*,101
end if
end associate
end
