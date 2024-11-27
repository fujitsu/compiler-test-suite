use iso_c_binding
character(10)::ch(2)
character(10)::ch1
call s(ch,ch1)
contains
subroutine s(a,b)
character(10),dimension(1:*)::a
character(10)::b
print *,c_sizeof(a)
end subroutine
end
