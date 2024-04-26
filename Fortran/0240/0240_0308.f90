call s
print *,'pass'
end
subroutine s
r = tand(.5)
if(abs(r-8.72686785E-03)>=0.10000000)  print *,'err'
end
