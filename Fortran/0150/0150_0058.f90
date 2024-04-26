complex(8) a1(3,3)
a1=(0.2,0.5)
call s(a1)
print *,'pass'
contains
subroutine s(a1)
complex(8) a1(:,:)
complex(8) ac(size(a1,1),size(a1,1)),x(size(a1,1),size(a1))
complex(8) y(size(a1,1),size(a1))
ac=a1(1,1)
x=a1(1,1)
y=matmul(ac,x)
if (any(abs(y- (-0.6299999964237213,0.6000000089406967)) > 0.0001)) print *,101,y
end subroutine
end
