subroutine s1
integer ary(-3:-1,-2:-1)
integer x(2)
integer y(3)
ary=reshape([1,2,3,4,5,6],[3,2])
x=[-1,-2]
y=[-1,-2,-3]
k1=-3;k2=-1;k3=1;k4=-2;k5=-1;k6=1
associate(p=> ary(k1:k2:k3,k4:k5:k6) )
k1=-100000;k2=-100000;k3=-100000;k4=-100000;k5=-100000;k6=-100000
if (any([p]/=[1,2,3,4,5,6])) print *,401
if (any(lbound(p)/=1)) print *,402
if (any(ubound(p)/=[3,2])) print *,403
end associate

associate(p=> ary(:,x) )
x=-1000
if (any([p]/=[4,5,6,1,2,3])) print *,101
if (any(lbound(p)/=1)) print *,102
if (any(ubound(p)/=[3,2])) print *,103
end associate

k1=-3;k2=-1;k3=1;k4=-2;k5=-1;k6=1
x=[-1,-2]
associate(p=> ary(k1:k2:k3,x) )
k1=-100000;k2=-100000;k3=-100000;k4=-100000;k5=-100000;k6=-100000
x=-1000
if (any([p]/=[4,5,6,1,2,3])) print *,201
if (any(lbound(p)/=1)) print *,202
if (any(ubound(p)/=[3,2])) print *,203
end associate

n1=1;n2=2
k1=-3;k2=-1;k3=1;k4=-2;k5=-1;k6=1
x=[-1,-2]
associate(p=> ary(k1:k2:k3,x(n1:n2)) )
k1=-100000;k2=-100000;k3=-100000;k4=-100000;k5=-100000;k6=-100000
n1=-100000;n2=-100000
x=-1000
if (any([p]/=[4,5,6,1,2,3])) print *,301
if (any(lbound(p)/=1)) print *,302
if (any(ubound(p)/=[3,2])) print *,303
end associate

n1=1;n2=2
k1=-3;k2=-1;k3=1;k4=-2;k5=-1;k6=1
x=[-1,-2]
i1=1;i2=3;i3=1
associate(p=> ary(y(i1:i2:i3),x(n1:n2)) )
i1=-100000;i2=-100000;i3=-1000000
k1=-100000;k2=-100000;k3=-100000;k4=-100000;k5=-100000;k6=-100000
n1=-100000;n2=-100000
x=-1000
if (any([p]/=[6,5,4,3,2,1])) print *,501,p
if (any(lbound(p)/=1)) print *,502
if (any(ubound(p)/=[3,2])) print *,503
end associate
end
call s1
print *,'pass'
end

