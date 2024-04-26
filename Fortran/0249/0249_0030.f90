character,pointer :: ii
call sub(NULL(ii))
contains
subroutine sub(d1)
character,optional :: d1(*)
if(present(d1)) then
print*,102
else
print*,'pass'
endif
end subroutine
end

