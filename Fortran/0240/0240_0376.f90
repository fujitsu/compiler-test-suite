call s
print *,'pass'
end
subroutine s
r = hypot( 3.0,4.0)
if(r.ne.5.0) print *,'err'
end
