call s
print *,'pass'
end
subroutine s
a = tiny (4.0)
if (kind(a) .eq.4) then
if(a.ne.1.17549435E-38) print *,'err'
endif
end
