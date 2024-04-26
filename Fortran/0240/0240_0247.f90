call s
print *,'pass'
end
subroutine s
k = poppar(2)
n = poppar(3)
if(k.ne.1) print *,'err1'
if(n.ne.0) print *,'err2'
end
