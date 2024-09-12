call sub()
contains
subroutine sub(k)
optional::k
if (present(k)) then
if (merge(k,2,.false.)/=2) print *,101
endif
print *,'pass'
end subroutine
end

