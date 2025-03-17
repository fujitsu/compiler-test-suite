type x
logical a(3)
end type
type(x)::v
integer t1,t2
v%a(3)=.false.;t1=5;t2=8
j=3
!$omp atomic
v%a(j)=v%a(j).or.t1.ne.t2
if (.not.v%a(3))print *,'error',v%a(3)
v%a(j)=.false.
!$omp atomic
v%a(j)=v%a(j).or.t1.ne.t2.or.t1.ne.t2-3
if (.not.v%a(3))print *,'error',v%a(3)
v%a(j)=.false.
!$omp atomic
v%a(j)=v%a(j).or.t1.ne.t2-3.or.t1.ne.t2
if (.not.v%a(3))print *,'error',v%a(3)
!$omp atomic
v%a(j)=t1.ne.t2.or.v%a(j)
if (.not.v%a(3))print *,'error',v%a(3)
v%a(j)=.false.
!$omp atomic
v%a(j)=t1.ne.t2.or.t1.ne.t2-3.or.v%a(j)
if (.not.v%a(3))print *,'error',v%a(3)
v%a(j)=.false.
!$omp atomic
v%a(j)=t1.ne.t2-3.or.t1.ne.t2.or.v%a(j)
if (.not.v%a(3))print *,'error',v%a(3)
print *,'pass'
end
