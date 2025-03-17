logical a(3)
integer t1,t2
a(3)=.false.;t1=5;t2=8
j=3
!$omp atomic
a(j)=a(j).or.t1.ne.t2
if (.not.a(3))print *,'error',a(3)
a(j)=.false.
!$omp atomic
a(j)=a(j).or.t1.ne.t2.or.t1.ne.t2-3
if (.not.a(3))print *,'error',a(3)
a(j)=.false.
!$omp atomic
a(j)=a(j).or.t1.ne.t2-3.or.t1.ne.t2
if (.not.a(3))print *,'error',a(3)
!$omp atomic
a(j)=t1.ne.t2.or.a(j)
if (.not.a(3))print *,'error',a(3)
a(j)=.false.
!$omp atomic
a(j)=t1.ne.t2.or.t1.ne.t2-3.or.a(j)
if (.not.a(3))print *,'error',a(3)
a(j)=.false.
!$omp atomic
a(j)=t1.ne.t2-3.or.t1.ne.t2.or.a(j)
if (.not.a(3))print *,'error',a(3)
print *,'pass'
end
