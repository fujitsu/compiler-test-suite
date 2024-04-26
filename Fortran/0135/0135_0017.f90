subroutine s1
character(:),pointer::a(:)
character(2),target::t(7)=['12','34','56','78','9a','bc','de']
a=>t(1:7:2)
call s(a(1:3:2))
call x(a(1:3:2))
contains
subroutine x(d)
character(*)::d(:)
if (len(d)/=2)print *,201,len(d)
if (any(ubound(d)/=2))print *,202
if (d(1)/='12')print *,203,d(1)
if (d(2)/='9a')print *,205,d(2)
end subroutine
end
subroutine s(d)
character(*)::d(2)
if (len(d)/=2)print *,101,len(d)
if (d(1)/='12')print *,102,d(1)
if (d(2)/='9a')print *,103,d(2)
end
call s1
print *,'pass'
end
