complex(8) a1(3,3)
a1=(0.2,0.5)
call s(a1)
print *,'OK'
contains
subroutine s(a1)
complex(8) a1(:,:)
complex(8) ac(size(a1,1)*2,size(a1,1)),x(size(a1,1),size(a1,1))
ac=-1
ac(::2,:)=a1(1,1)
x(:,:)=a1(1,1)+(2.2)
call ss(x(:,:),ac(::2,:),a1)
end subroutine
subroutine ss(x,ac,a1)
complex(8) a1(:,:)
complex(8) x(size(a1,1),size(a1,1)),ac(:,:)
x=matmul(transpose(x),ac)
if (any(abs(x- (0.6900000518560414,3.900000080466270)) > 0.0001)) print *,101,x
end subroutine
end
