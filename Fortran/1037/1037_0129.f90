type x
logical k
end type
type(x)::v
integer t1,t2
v%k=.false.;t1=5;t2=8
!$omp atomic
v%k=v%k.or.t1.ne.t2
if (.not.v%k)print *,'error',v%k
v%k=.false.
!$omp atomic
v%k=v%k.or.t1.ne.t2.or.t1.ne.t2-3
if (.not.v%k)print *,'error',v%k
v%k=.false.
!$omp atomic
v%k=v%k.or.t1.ne.t2-3.or.t1.ne.t2
if (.not.v%k)print *,'error',v%k
!$omp atomic
v%k=t1.ne.t2.or.v%k
if (.not.v%k)print *,'error',v%k
v%k=.false.
!$omp atomic
v%k=t1.ne.t2.or.t1.ne.t2-3.or.v%k
if (.not.v%k)print *,'error',v%k
v%k=.false.
!$omp atomic
v%k=t1.ne.t2-3.or.t1.ne.t2.or.v%k
if (.not.v%k)print *,'error',v%k
print *,'pass'
end
