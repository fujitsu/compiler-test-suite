type x
end type
type(x):: b
integer a(0)
namelist /nam1/a
namelist /nam2/b
write(1,nam1) 
write(2,nam2) 
print *,'pass'
end
subroutine s1
integer a(0),b(0)
namelist /nam1/a
namelist /nam2/b
rewind 1
rewind 2
read(1,nam1)
read(2,nam2)
end

