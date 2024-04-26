call s()
print *,'pass'
end
subroutine s()
r = sin(.5)
if(abs(r-0.479425550) >= 0.10000000) print *,'err'
end
