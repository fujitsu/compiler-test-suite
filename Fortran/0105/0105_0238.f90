complex(8)::m1(2,2),m2(2),r(2)
m1(:,1)=(/3,4/)
m1(:,2)=(/5,6/)
m2=(/7,8/)
!
r=-(-matmul(m1,m2))
if (any(abs(r-(/+61.,+76./))>0.001))print *,'error-11'
r=matmul(m1,m2)-(-matmul(m1,m2))
if (any(abs(r-(/122.,152./))>0.001))print *,'error-12'
r=-(matmul(m1,m2)-(-matmul(m1,m2)))
if (any(abs(r-(/-122.,-152./))>0.001))print *,'error-13'
r=-(-(matmul(m1,m2)-(-matmul(m1,m2))))
if (any(abs(r-(/122,152/))>0.001))print *,'error-14'
r=-(-(matmul(m1,m2)-(-matmul(m1,m2))))-matmul(m1,m2)
if (any(abs(r-(/61,76/))>0.001))print *,'error-15'
r=-(-matmul(m1,m2)-(-matmul(m1,m2)-(-matmul(m1,m2)-(-matmul(m1,m2)))))
if (any(abs(r)>0.00001))print *,'error-16'
r=-(matmul(m1,m2)-matmul(m1,m2))-(matmul(m1,m2)-matmul(m1,m2))
if (any(abs(r)>0.00001))print *,'error-17'
r=-(-matmul(m1,m2)-matmul(m1,m2))-(-matmul(m1,m2)-matmul(m1,m2))
if (any(abs(r-(/244,304/))>0.001))print *,'error-18'
r=(-(-matmul(m1,m2)-matmul(m1,m2))-(-matmul(m1,m2)-matmul(m1,m2)))-&
  (-(-matmul(m1,m2)-matmul(m1,m2))-(-matmul(m1,m2)-matmul(m1,m2)))
if (any(abs(r)>0.00001))print *,'error-19'
r=(matmul(m1,m2)-matmul(m1,m2))-((matmul(m1,m2)-matmul(m1,m2)))
if (any(abs(r)>0.00001))print *,'error-20'
r=-(matmul(m1,m2)-matmul(m1,m2))-(-(matmul(m1,m2)-matmul(m1,m2)))
if (any(abs(r)>0.00001))print *,'error-21'
r=(-(-matmul(m1,m2)-matmul(m1,m2))-(-matmul(m1,m2)-matmul(m1,m2)))+&
  (-(-matmul(m1,m2)-matmul(m1,m2))-(-matmul(m1,m2)-matmul(m1,m2)))
if (any(abs(r-(/488,608/))>0.001))print *,'error-22'
!
print *,'pass'
end
