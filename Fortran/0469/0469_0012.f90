type ty01
 procedure(), pointer, nopass :: pp
end type
type (ty01) :: tt01
tt01 = ty01(tt01%pp)
print *,'pass'
end
