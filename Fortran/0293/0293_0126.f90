type der_type
   real x
   integer :: in
end type der_type

type(der_type), dimension(0:4), target  :: typ
integer       , dimension(:)  , pointer :: pt_1

typ%in =  45
pt_1         => typ%in

if (any( (/lbound(typ%in),ubound(typ%in) /) /=(/1,5/)))print *,102
if (any( (/lbound(pt_1),ubound(pt_1) /) /=(/1,5/)))print *,103

print *,'pass'
end 
