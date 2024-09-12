subroutine s1(n1,n2,n3)
type::x
 integer::x1
end type
type,extends(x)::y
  integer::y1
end type
class(x),pointer::p(:)
class(x),pointer::p2(:,:,:,:)
allocate(y::p(12))
p%x1=[1,2,3,4,5,6,7,8,9,10,11,12]
p2(1:2,1:2,1:1,1:3)=> p
if (any(lbound(p2)/=[1,1,1,1])) print *,201
if (any(ubound(p2)/=[2,2,1,3])) print *,202
if (p2(1,1,1,1)%x1/=1) print *,101
if (p2(2,1,1,1)%x1/=2) print *,102
if (p2(1,2,1,1)%x1/=3) print *,103
if (p2(2,2,1,1)%x1/=4) print *,104
if (p2(1,1,1,2)%x1/=5) print *,111
if (p2(2,1,1,2)%x1/=6) print *,112
if (p2(1,2,1,2)%x1/=7) print *,113
if (p2(2,2,1,2)%x1/=8) print *,114
if (p2(1,1,1,3)%x1/=9) print *,115
if (p2(2,1,1,3)%x1/=10) print *,116
if (p2(1,2,1,3)%x1/=11) print *,117
if (p2(2,2,1,3)%x1/=12) print *,118
k=0
select type(p2)
type is(y)
  k=1
end select
if (k/=1) print *,601
p2(n1:n2,n1:n2,n1:n2-n1,n1:n3)=> p
if (any(lbound(p2)/=[1,1,1,1])) print *,201
if (any(ubound(p2)/=[2,2,1,3])) print *,202
if (p2(1,1,1,1)%x1/=1) print *,101
if (p2(2,1,1,1)%x1/=2) print *,102
if (p2(1,2,1,1)%x1/=3) print *,103
if (p2(2,2,1,1)%x1/=4) print *,104
if (p2(1,1,1,2)%x1/=5) print *,111
if (p2(2,1,1,2)%x1/=6) print *,112
if (p2(1,2,1,2)%x1/=7) print *,113
if (p2(2,2,1,2)%x1/=8) print *,114
if (p2(1,1,1,3)%x1/=9) print *,115
if (p2(2,1,1,3)%x1/=10) print *,116
if (p2(1,2,1,3)%x1/=11) print *,117
if (p2(2,2,1,3)%x1/=12) print *,118
k=0
select type(p2)
type is(y)
  k=1
end select
if (k/=1) print *,601
end
call s1(1,2,3)
print *,'pass'
end
