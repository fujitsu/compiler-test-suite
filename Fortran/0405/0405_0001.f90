real :: s(10)=1,sin,c=1
associate( c => sin(1.0),sin=>c,s=>1 )
if (1.eq.2)print *, c
if (1.eq.2)print *, sin
if (1.eq.2)print *, s
if (1.eq.2)print *, c+sin+s
end associate
print *,'pass'
end
function sin(s)
real ::sin,s
sin=s
end function
