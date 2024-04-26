character(len =5) :: chr(5)

i = 2
chr(2) = 'aaaaa'
chr(3) = 'bbbbb'

associate(aa=>chr(i:)(i:))
i = i+1
if(aa(2) .EQ. 'bbbb') then
  print*,'pass'
else
  print*,101
end if
end associate

end
