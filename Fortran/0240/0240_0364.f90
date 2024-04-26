call s()
print *,'pass'
end
subroutine s()
external sin
call fred(1.0_4,2.0_4,sin)
end
subroutine fred (a,b,sin)
external sin
call bill(a,sin)
i=b
i=i
end
subroutine bill(aa,sin)
ss=sin(aa)
if (abs(ss-aa*10)>0.00001) print *,'err'
end
function sin(aa)
sin=aa*10
end
