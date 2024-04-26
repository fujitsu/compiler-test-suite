call s
print *,'pass'
end
subroutine s
x = sqrt(16.0)
if(x.ne.4.0) print *,'err'
end
