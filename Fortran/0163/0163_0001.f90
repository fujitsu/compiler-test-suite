use iso_fortran_env
character(character_kinds(1))::a1,a11(character_kinds(1))
integer(integer_kinds(1))::a2,a22(real_kinds(1))
integer(integer_kinds(2))::a3,a33(real_kinds(2))
integer(integer_kinds(3))::a4,a44(real_kinds(3))
integer(integer_kinds(4))::a5,a55(integer_kinds(1))
logical(integer_kinds(1))::a6,a66(integer_kinds(2))
logical(integer_kinds(2))::a7,a77(integer_kinds(3))
logical(integer_kinds(3))::a8,a88(integer_kinds(4))
logical(integer_kinds(4))::a9
procedure(character(character_kinds(1),character_kinds(1)))::z1

if(kind(a1)/=1) print *,'err1'
if(kind(a2)/=1) print *,'err2'
if(kind(a3)/=2) print *,'err3'
if(kind(a4)/=4) print *,'err4'
if(kind(a5)/=8) print *,'err5'
if(kind(a6)/=1) print *,'err6'
if(kind(a7)/=2) print *,'err7'
if(kind(a8)/=4) print *,'err8'
if(kind(a9)/=8) print *,'err9'

if(any(shape(a11)/=[1])) print *,'err10'
if(any(shape(a55)/=[1])) print *,'err14'
if(any(shape(a66)/=[2])) print *,'err15'
if(any(shape(a77)/=[4])) print *,'err16'
if(any(shape(a88)/=[8])) print *,'err17'

print *,'pass'
end
subroutine z1
use iso_fortran_env
integer(1)::ii(0)
ii=[integer(integer_kinds(1))::]
end subroutine z1
