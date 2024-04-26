subroutine s(d)
real(8)::d,e
d=1.
e=1.
write(1,*)1,mod(loc(d),8)
write(1,*)2,mod(loc(e),8)
end
common /x/a,c
real(8)::c,e
write(1,*)11,mod(loc(c),8)
write(1,*)12,mod(loc(e),8)
call s(e)
call s(c)
print *,'pass'
end

