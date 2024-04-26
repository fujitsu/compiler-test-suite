call s
print *,'pass'
end
subroutine s
r = sind(.5)
if(abs(r-8.72653536E-03) >= 0.10000000) print *,'err'
end
