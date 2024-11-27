use iso_c_binding
integer(c_int)::i
call sss(c_sizeof(i))
print *,'pass'
contains
subroutine sss(x)
integer::x
if(x/=4) print *,'err'
end subroutine
end


