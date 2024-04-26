call s
print *,'pass'
end
subroutine s
a = nearest (34.3, -2.0)
if(abs(a-34.2999954) >= 0.10000000) print *,'err'
end
