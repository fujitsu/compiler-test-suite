call sub()
print *,'pass'
contains
subroutine sub(a)
integer,optional,intent(out)::a(:)
if (present(a)) then
a=1
endif
end subroutine
end
