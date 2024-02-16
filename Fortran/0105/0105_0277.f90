complex(8)::m1(2,1),m2(1),r(2),rr(2)
common /x/dummy,rr
integer*1 dummy
rr=(/2,3/)
m1(1,1)=4
m1(2,1)=5
m2=6
call sub(m1,m2,r,rr)
if (any(abs(r-(/26,33/))>0.00001_8))print *,'error-1'
print *,'pass'
end
subroutine sub(m1,m2,r,rr)
complex(8)::m1(2,1),m2(1),r(2),rr(2)
r=matmul(m1,m2)+rr
end
