type x
  integer:: x1(3)
end type
 type  y
  type(x):: y1
 end type
 type (y)::z
z%y1%x1(1:3:2)=1
write(1,*)z%y1%x1(1:3:2)
print *,'pass'
end
