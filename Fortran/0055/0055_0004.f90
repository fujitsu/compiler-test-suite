implicit type(double precision) (p)
p=10.5
if(func() /= p)print*,"101"
print*,"PASS"
contains
type(double precision) function func()
func = 10.5 
end function
end
