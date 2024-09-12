subroutine s1
integer a( int(real( 2.1) ) )
integer b( int(sin ( 2.) *10) )
if (any(shape(a)/=2))print *,101
if (any(shape(b)/=9))print *,102
end
call s1
print *,'pass'
end
