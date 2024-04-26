character,pointer :: ii
call sub(NULL(ii))
contains
subroutine sub(d1)
character,optional :: d1
print*,present(d1)
end subroutine
end
