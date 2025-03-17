logical k
integer t1,t2
k=.false.;t1=5;t2=8
!$omp atomic
k=k.or.t1.ne.t2
if (.not.k)print *,'error',k
k=.false.
!$omp atomic
k=k.or.t1.ne.t2.or.t1.ne.t2-3
if (.not.k)print *,'error',k
k=.false.
!$omp atomic
k=k.or.t1.ne.t2-3.or.t1.ne.t2
if (.not.k)print *,'error',k
!$omp atomic
k=t1.ne.t2.or.k
if (.not.k)print *,'error',k
k=.false.
!$omp atomic
k=t1.ne.t2.or.t1.ne.t2-3.or.k
if (.not.k)print *,'error',k
k=.false.
!$omp atomic
k=t1.ne.t2-3.or.t1.ne.t2.or.k
if (.not.k)print *,'error',k
print *,'pass'
end
