subroutine  s1
real   ,parameter,dimension(2,3)::k=1
integer,parameter,dimension(2,3):: a01= int2(1.)
real(4),parameter,dimension(3)::b1=[(1,2),(3,4),(5,6)]
integer,parameter,dimension(3):: a02= int2(b1)
integer,parameter,dimension(2,3):: a03= int2(k)
integer,parameter,dimension(3):: a04= int2([1.,2.,3.])
integer,parameter:: n01= kind(int2([1.,2.,3.]))
integer,parameter:: n02= kind(int2(b1))
if (any(a01/=1))print *,101
if (any(a02/=[1,3,5]))print *,102
if (any(a03/=1))print *,103
if (any(a04/=[1,2,3]))print *,103
if (n01/=2) print *,200
if (n02/=2) print *,201
if (int2(1.0)/=1) print *,202
end
call s1
print *,'pass'
end
