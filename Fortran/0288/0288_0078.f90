call s
print *,'pass'
end
subroutine s
a = huge(4.1)
if(a.ne.3.40282347E+38) print *,'err'
end
