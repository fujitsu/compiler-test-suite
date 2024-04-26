character(len = 5) :: chr(5)

i = 2
chr(2) = 'a'
chr(3) = 'b'

associate(aa=>chr((i)))
i = i+1
if(aa .EQ. 'a') then
  print*,'pass'
else
  print*,101
end if
end associate

end
