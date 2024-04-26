complex :: c,x(10)
type ty1
 complex :: c
end type
type (ty1) :: str
data c%re /1.0/
data x(1)%re /1.0/
data  str%c%re /1.0/
print *,'pass'
end
