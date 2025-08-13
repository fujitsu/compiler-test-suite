type xx
  integer x3
end type
type x
  integer x1
  integer x2
  type(xx)  x3
end type
type (x) v
namelist /nam/ i1,i2,v
write(7,*) '&nam v%x2=100 /'
rewind 7
read(7,nam)
if (v%x2/=100)write(6,*) "NG"
print *,'pass'
end

