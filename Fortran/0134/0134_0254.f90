subroutine s1
character(1),external,pointer::p
character(1),external::f
p=>f
call x(p)
end
subroutine x(d)
character(1),external::d
if (d()/='1')print *,101
end
character(1) function f()
f='1'
end
call s1
print *,'pass'
end
