 subroutine s1
procedure(integer),pointer :: p=>null()
if (associated(p)) print *,101
end
call s1
print *,'pass'
end
