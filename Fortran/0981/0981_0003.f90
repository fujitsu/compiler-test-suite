i=100
!$omp parallel default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
i=100
!$omp parallel do default(firstprivate)
do i=1,i
enddo
!$omp endparallel do
i=100
!$omp parallel private(j) default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
i=100
!$omp parallel private(j) firstprivate(i)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
i=100
!$omp parallel firstprivate(j)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
i=100
!$omp parallel firstprivate(i)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
i=100
!$omp parallel reduction(+:j)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel

i=100
!$omp parallel shared(j)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel

i=100
!$omp parallel shared(j,i)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel

i=100
!$omp parallel firstprivate(j,i)  default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel

i=200
!$omp parallel default(private)
i=100
!$omp parallel default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
!$omp endparallel


i=100
!$omp parallel default(firstprivate)
!$omp parallel default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
!$omp endparallel

i=200
!$omp parallel default(firstprivate)
!$omp single
if (i.ne.200) write(6,*) "NG"
i=100
!$omp parallel default(firstprivate)
!$omp single
j=i
if (j.ne.100) write(6,*) "NG"
!$omp end single
!$omp endparallel
!$omp end single
!$omp endparallel


print *,"pass"
end
