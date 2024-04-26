character(len = 5) :: chr(5,5)

i = 1
j =2
chr(2,2) = 'aaaaa'
chr(3,3) = 'bbbbb'
associate(aa=>chr(:i+4,j+1:)(:i+j))
i = i-1
j = j-1
if(aa(3,1) .EQ. 'bbb') then
  print*,'pass'
else
  print*,101
end if
end associate
end
