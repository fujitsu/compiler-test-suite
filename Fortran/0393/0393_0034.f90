subroutine s1(n1,n2,n3)
type::x
 integer::x1
end type
type,extends(x)::y
  integer::y1
end type
class(x),pointer::p(:)
class(x),pointer,contiguous::p2(:,:,:,:)
allocate(y::p2(1:2,1:2,1:1,1:3))
p2%x1=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[2,2,1,3])
p(2:13)=>p2
if (any(lbound(p)/=[2])) print *,201
if (any(ubound(p)/=[13])) print *,202
if (p(2)%x1/=1) print *,101
if (p(3)%x1/=2) print *,102
if (p(4)%x1/=3) print *,103
if (p(5)%x1/=4) print *,104
if (p(6)%x1/=5) print *,111
if (p(7)%x1/=6) print *,112
if (p(8)%x1/=7) print *,113
if (p(9)%x1/=8) print *,114
if (p(10)%x1/=9) print *,115
if (p(11)%x1/=10) print *,116
if (p(12)%x1/=11) print *,117
if (p(13)%x1/=12) print *,118
k=0
select type(p)
type is(y)
  k=1
end select
if (k/=1) print *,601
p(n2:n2*n2*n3+1)=>p2
if (any(lbound(p)/=[2])) print *,201
if (any(ubound(p)/=[13])) print *,202
if (p(2)%x1/=1) print *,101
if (p(3)%x1/=2) print *,102
if (p(4)%x1/=3) print *,103
if (p(5)%x1/=4) print *,104
if (p(6)%x1/=5) print *,111
if (p(7)%x1/=6) print *,112
if (p(8)%x1/=7) print *,113
if (p(9)%x1/=8) print *,114
if (p(10)%x1/=9) print *,115
if (p(11)%x1/=10) print *,116
if (p(12)%x1/=11) print *,117
if (p(13)%x1/=12) print *,118
k=0
select type(p)
type is(y)
  k=1
end select
if (k/=1) print *,601
end
call s1(1,2,3)
print *,'pass'
end
