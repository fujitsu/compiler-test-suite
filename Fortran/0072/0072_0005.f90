type x
end type
type(x):: b
integer a(0)
namelist /nam1/a
namelist /nam2/b
write(8,nam1) 
write(9,nam2) 
print *,'pass'
end
subroutine s1
integer a(0),b(0)
namelist /nam1/a
namelist /nam2/b
rewind 8
rewind 9
read(8,nam1)
read(9,nam2)
end

