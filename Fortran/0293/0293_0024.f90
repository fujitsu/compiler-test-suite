subroutine s1
character(:),allocatable::a(:)
allocate(a(2),source=['12','34'])
call ss([a])
call st(reshape(a,[2,1]))
contains
subroutine ss(x)
character(*)::x(:)
if (any(ubound(x)/=2))print *,101
if (len(x)/=2)print *,102
if (any(x/=['12','34']))print *,103
end subroutine
subroutine st(x)
character(*)::x(:,:)
if (any(ubound(x)/=[2,1]))print *,201
if (len(x)/=2)print *,202
if (any([x]/=['12','34']))print *,203
end subroutine
end
call s1
print *,'pass'
end

