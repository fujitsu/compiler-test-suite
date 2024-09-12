subroutine s1(i)
character(i),pointer::ps
integer,pointer::pa(:)
character(i),target::ts
integer,target::ta(0)
!
ps=>ts
if (associated(ps,ts))print *,101
if (associated(pa,ta))print *,102
end
call s1(0)
print *,'pass'
end
