function f5( x,y ) bind(c)
type,bind(c):: z
  logical(1):: z1
  logical(2):: z2
  logical(4):: z4
  logical(8):: z8
end type
type(z):: x,y,f5
value:: y
f5%z2=1     
end
print *,'pass'
end
