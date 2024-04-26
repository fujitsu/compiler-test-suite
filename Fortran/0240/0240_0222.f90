call s
print *,'pass'
end
subroutine s
r = modulo(23.0,4.0)
i = modulo(-23,4)
j = modulo(23,-4)
k = modulo(-23,-4)
if(r.ne.3.0) print *,'err1'
if(i.ne.1) print *,'err2'
if(j.ne.-1) print *,'err3'
if(k.ne.-3) print *,'err4'
end
