l=1
m=2
i=1
do concurrent(i=1:3,(l.gt.0).and.(m.lt.3))
!$omp parallel if(i>0) default(firstprivate)
k=i
!$omp end parallel
end do
print *,'pass'
end
