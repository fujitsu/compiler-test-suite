call s
print *,'pass'
end
subroutine s
call sub()
call s2(2)
contains
subroutine sub(c1,c2)
character(*),optional::c1,c2
if (present(c1)) then
print *,len(c1),len(c2)
endif
end subroutine
subroutine s2(i,c1,c2)
character(i),optional::c1,c2
if (present(c1).and.present(c2)) then
print *,len(c1),len(c2)
endif
end subroutine
end
