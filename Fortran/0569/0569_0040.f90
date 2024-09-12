module m1
type NODE 
integer,allocatable:: alc
end type
type (NODE)::obj 
contains
pure function pure_f(obj)
type(NODE),value:: obj
integer::pure_f
pure_f=1
if (allocated(obj% alc ) ) pure_f=0
end function
end

use m1
integer::res
res= pure_f( obj ) + pure_f( obj ) 
if (res/=2) print *,101
print *,'Pass'
end
