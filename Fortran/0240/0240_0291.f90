call s
print *,'pass'
end
subroutine s
x = spacing(4.7)
if(abs(x-4.76837158E-07) >= 0.10000000) print *,'err'
end
