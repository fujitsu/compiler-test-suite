subroutine s1
character(:),pointer::a(:)
character(2),target::t(3)=['12','34','56']
a=>t(1:3:2)
call s(a//a)
call x(a//a)
contains
subroutine x(d)
character(*)::d(:)
if (len(d)/=4)print *,201,len(d)
if (any(ubound(d)/=2))print *,202
if (d(1)/='1212')print *,203,d(1)
if (d(2)/='5656')print *,205,d(2)
end subroutine
end
subroutine s(d)
character(*)::d(2)
if (len(d)/=4)print *,101,len(d)
if (d(1)/='1212')print *,102,d(1)
if (d(2)/='5656')print *,103,d(2)
end
call s1
print *,'pass'
end
