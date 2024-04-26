call s
print *,'pass'
end
subroutine s
b = real(-3)
if(b.ne.-3.0) print *,'err'
end
