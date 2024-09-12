integer,pointer::p
p=>null()
call sub(p)
print *,'pass'
contains
subroutine sub(p)
integer,optional::p
if (present(p)) print *,101
end subroutine
end
