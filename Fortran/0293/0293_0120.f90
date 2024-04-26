type x1
   integer x(2,3,4)
end type
type x2
   type(x1) y(5,6)
end type
type (x2) z(4,3,2)

z(4,3,2)%y(5,6)%x(2,3,4)=1
if (z(4,3,2)%y(5,6)%x(2,3,4)/=1) print *,102
print *,'pass'
end
