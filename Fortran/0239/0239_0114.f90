subroutine s1
if (trailz( -1 )/= 0) print *,103
if (trailz(  0 )/=32) print *,104
if (trailz(  8 )/= 3) print *,105

end
call s1
print *,'pass'
end


