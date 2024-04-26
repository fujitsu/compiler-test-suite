character(len = 5) :: chr(5)

i = 2
chr(2) = 'aaaaa'
chr(3) = 'bbbbb'
associate(aa=>chr(i::2)(i:))
i = i+1
if(aa(1) .EQ. 'aaaa') then
  print*,'pass'
else
  print*,101
end if
end associate

end
