module mod
private
type, public :: t(i,j,k)
integer,kind::i=kind(0.0_8)
integer,len::j,k
end type
end 
use mod
print *,'pass'
end 
