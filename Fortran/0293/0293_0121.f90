subroutine s1
type x
  integer x1
  character(:),pointer::x2
  character(:),pointer::x3(:)
end type
type (x)::v(2)
allocate(character(2)::v(2)%x2)
allocate(character(2)::v(2)%x3(3))
n1=1;n2=2;n3=3
v(2)%x2='xy'
if (v(2)%x2/='xy')print *,101
v(2)%x2(:)='xy'
if (v(2)%x2/='xy')print *,102
v(2)%x2(1:2)='xy'
if (v(2)%x2/='xy')print *,103
v(2)%x2(n1:n2)='xy'
if (v(2)%x2/='xy')print *,104
!
v(2)%x3(3)='xy'
if (v(2)%x3(3)/='xy')print *,111
v(2)%x3(3)(:)='xy'
if (v(2)%x3(3)/='xy')print *,112
v(2)%x3(3)(1:2)='xy'
if (v(2)%x3(3)/='xy')print *,113
v(2)%x3(3)(n1:n2)='xy'
if (v(2)%x3(3)/='xy')print *,114
v(n2)%x3(3)='xy'
if (v(n2)%x3(3)/='xy')print *,121
v(n2)%x3(3)(:)='xy'
if (v(n2)%x3(3)(:)/='xy')print *,122
v(n2)%x3(3)(1:2)='xy'
if (v(n2)%x3(3)(1:2)/='xy')print *,123
v(n2)%x3(3)(n1:n2)='xy'
if (v(n2)%x3(3)(n1:n2)/='xy')print *,124
!
v(2)%x3(1:3)='xy'
if (any(v(2)%x3(1:3)/='xy'))print *,131
v(2)%x3(1:3)(:)='xy'
if (any(v(2)%x3(1:3)/='xy'))print *,132
v(2)%x3(1:3)(1:2)='xy'
if (any(v(2)%x3(1:3)/='xy'))print *,133
v(2)%x3(1:3)(n1:n2)='xy'
if (any(v(2)%x3(1:3)/='xy'))print *,134
v(n2)%x3(1:3)='xy'
if (any(v(n2)%x3(1:3)/='xy'))print *,141
v(n2)%x3(1:3)(:)='xy'
if (any(v(n2)%x3(1:3)(:)/='xy'))print *,142
v(n2)%x3(1:3)(1:2)='xy'
if (any(v(n2)%x3(1:3)(1:2)/='xy'))print *,143
v(n2)%x3(1:3)(n1:n2)='xy'
if (any(v(n2)%x3(1:3)(n1:n2)/='xy'))print *,144
v(2)%x3(1:n3)='xy'
if (any(v(2)%x3(1:n3)/='xy'))print *,151
v(2)%x3(1:n3)(:)='xy'
if (any(v(2)%x3(1:n3)/='xy'))print *,152
v(2)%x3(1:n3)(1:2)='xy'
if (any(v(2)%x3(1:n3)/='xy'))print *,153
v(2)%x3(1:n3)(n1:n2)='xy'
if (any(v(2)%x3(1:n3)/='xy'))print *,154
v(n2)%x3(1:n3)='xy'
if (any(v(n2)%x3(1:n3)/='xy'))print *,161
v(n2)%x3(1:n3)(:)='xy'
if (any(v(n2)%x3(1:n3)(:)/='xy'))print *,162
v(n2)%x3(1:n3)(1:2)='xy'
if (any(v(n2)%x3(1:n3)(1:2)/='xy'))print *,163
v(n2)%x3(1:n3)(n1:n2)='xy'
if (any(v(n2)%x3(1:n3)(n1:n2)/='xy'))print *,164
end
call s1
print *,'pass'
end
