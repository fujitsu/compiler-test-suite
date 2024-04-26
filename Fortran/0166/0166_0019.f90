complex:: a
a%re=1.0
call sub(a%re)
print *,'pass'
end
subroutine sub(r)
real:: r
if (r.ne.1.0) print *,'err'
end
