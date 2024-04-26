subroutine s1 
integer,dimension(101,102,103)::a,b,c
a=1
b=2
c=3
call sub(a)
end
subroutine s2 
integer,dimension(101,102,103)::a,b,c
a=1
call sub(a)
end
subroutine sub(a)
integer a(*)
if (any(a(1:101*102*103)/=1)) print *,101
end
call s1
call s2
print *,'pass'
end
