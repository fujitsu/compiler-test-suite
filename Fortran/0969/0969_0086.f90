intrinsic        :: int
integer          :: i

integer, pointer :: ipn1

i = 1

write(unit = 1,       *) 'a'
write(unit = int(1 ), *) 'a'
write(unit = int(i ), *) 'a'
write(unit = int(-1), *) 'a' 
write(unit = index('test', 'est'),      *) 'a'

ipn1 => null() 

end
