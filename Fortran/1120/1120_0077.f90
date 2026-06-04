call test01()
call test02()
call test03()
print *,"pass"
end

subroutine test01()
pfun()=i+j+k
ifun()= i1
kfun()=k3+ifun()
jfun()=j2+kfun()
i=1;j=2;k=3
!$omp parallel default(firstprivate)
!$omp single
ians=pfun()
if (ians.ne.6) print *,"err"
!$omp endsingle
!$omp end parallel
ians=0
!$omp parallel default(private) shared(ians)
!$omp single
i1=1;j2=2;k3=3
ians=jfun()
!$omp endsingle
!$omp end parallel 
if (ians.ne.6) print *,"err"

ians=0
i1=1;j2=2;k3=3
!$omp parallel default(shared) shared(ians)
!$omp single
ians=jfun()
!$omp endsingle
!$omp end parallel
if (ians.ne.6) print *,"err"

ians=0
i1=1;j2=2;k3=3
!$omp parallel default(none) shared(ians,i1,j2,k3)
!$omp single
ians=jfun()
!$omp endsingle
!$omp end parallel
if (ians.ne.6) print *,"err"

end

subroutine test02()
pfun()=i+j+k
ifun()= i1
kfun()=k3+ifun()
jfun()=j2+kfun()
i=1;j=2;k=3
!$omp parallel
!$omp parallel default(firstprivate)
!$omp single
ians=pfun()
if (ians.ne.6) print *,"err a4"
!$omp endsingle
!$omp end parallel
!$omp single
ians=0
!$omp parallel default(private) shared(ians)
!$omp single
i1=1;j2=2;k3=3
ians=jfun()
!$omp endsingle
!$omp end parallel 
if (ians.ne.6) print *,"err a3"
!$omp endsingle

!$omp single
ians=0
i1=1;j2=2;k3=3
!$omp parallel default(shared) shared(ians)
!$omp single
ians=jfun()
!$omp endsingle
!$omp end parallel
if (ians.ne.6) print *,"err a2"

!$omp endsingle
!$omp single
ians=0
i1=1;j2=2;k3=3
!$omp parallel default(none) shared(ians,i1,j2,k3)
!$omp single
ians=jfun()
!$omp endsingle
!$omp end parallel
if (ians.ne.6) print *,"err a1"
!$omp endsingle
!$omp end parallel

end

subroutine test03()
pfun()=i+j+k
ifun()= i1
kfun()=k3+ifun()
jfun()=j2+kfun()
i=1;j=2;k=3
!$omp parallel default(firstprivate)
!$omp single
!$omp parallel default(firstprivate)
!$omp single
ians=pfun()
if (ians.ne.6) print *,"err4"
!$omp endsingle
!$omp end parallel
!$omp endsingle
!$omp single
ians=0
!$omp parallel default(private) shared(ians)
!$omp single
i1=1;j2=2;k3=3
ians=jfun()
!$omp endsingle
!$omp end parallel 
if (ians.ne.6) print *,"err3"
!$omp endsingle

!$omp single
ians=0
i1=1;j2=2;k3=3
!$omp parallel default(shared) shared(ians)
!$omp single
ians=jfun()
!$omp endsingle
!$omp end parallel
if (ians.ne.6) print *,"err2"
!$omp endsingle

!$omp single
ians=0
i1=1;j2=2;k3=3
!$omp parallel default(none) shared(ians,i1,j2,k3)
!$omp single
ians=jfun()
!$omp endsingle
!$omp end parallel
if (ians.ne.6) print *,"err1"
!$omp endsingle
!$omp end parallel

end
