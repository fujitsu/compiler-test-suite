call s
print *,'pass'
end
subroutine s
r = mod(23.0,4.0)
i = mod(-23,4)
j = mod(23,-4)
k = mod(-23,-4)
if(r.ne.3.0) print *,'err1'
if(i.ne.-3) print *,'err2'
if(j.ne.3) print *,'err3'
if(k.ne.-3) print *,'err4'
end
