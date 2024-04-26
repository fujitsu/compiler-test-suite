call s
print *,'pass'
end
subroutine s
x = scale(1.5,3)
if(x.ne.12.0) print *,'err'
end
