call s
print *,'pass'
end
subroutine s
a = huge(4.1)
if (kind(a).eq.4) then
if(a.ne.3.40282347E+38) print *,'err'
endif
end
