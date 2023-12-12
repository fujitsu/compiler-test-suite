complex(8) a1(3,3)
a1=(0.2,0.5)
call s(a1)
print *,'OK'
contains
subroutine s(a1)
complex(8) a1(:,:)
complex(8) ac(size(a1,1),size(a1,1)),x(size(a1,1),size(a1,1))
ac=a1(1,1)
x=a1(1,1)+(2.2)
x=matmul(conjg(x),ac)
if (any(abs(x- (2.190000051856042,3.300000071525574)) > 0.0001)) print *,101,x
end subroutine
end
