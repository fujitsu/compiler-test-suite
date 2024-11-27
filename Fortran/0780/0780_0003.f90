type ty1
 complex :: a
end type
type(ty1) :: str(10)
data (str(i)%a%re ,i=1,10) /10*1.0/
print *,str
end

