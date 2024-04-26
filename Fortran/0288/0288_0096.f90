call s
print *,'pass'
end
subroutine s
a=tiny(4.0)
if(a.ne.1.17549435E-38) print *,'err'
end
