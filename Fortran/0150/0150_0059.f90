type x
  integer:: x1
  integer:: x2
end type
type(x):: t
namelist /nam/ k,t,z
k=101
t=x(1,2)
z=20
write(11,nam)
print *,'pass'

end
