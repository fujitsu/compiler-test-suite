pointer (ip1,var1)
pointer (ip2,var2)
integer var1,var2,i1,i2
ip1=loc(i1)
ip2=loc(i2)
i1=1
i2=2
!$omp parallel default(firstprivate)
if (var1.ne.1) write(6,*) "NG"
if (var2.ne.2) write(6,*) "NG"
!$omp endparallel

ip1=loc(i1)
ip2=loc(i2)
i1=1
i2=2
!$omp parallel default(firstprivate) shared(ip2)
!$omp single
if (var2.ne.2) write(6,*) "NG"
ip1=1
var2=1
!$omp endsingle
!$omp endparallel

ip1=loc(i1)
ip2=loc(i2)
i1=1
i2=2
!$omp parallel default(firstprivate) private(ip2)
!$omp single
if (var1.ne.1) write(6,*) "NG"
ip1=1
if (1.eq.2) var2=1
!$omp endsingle
!$omp endparallel

ip1=loc(i1)
ip2=loc(i2)
i1=1
i2=2
!$omp parallel default(firstprivate) firstprivate(iii)
!$omp single
if (var2.ne.2) write(6,*) "NG"
ip1=1
var2=1
!$omp endsingle
!$omp endparallel


ip1=loc(i1)
ip2=loc(i2)
i1=1
i2=2
!$omp parallel default(firstprivate)
!$omp single
if (1.eq.2) then
if (var2.ne.2) write(6,*) "NG"
endif
ip1=1
if(1.eq.2) then
var2=1
endif
!$omp endsingle
!$omp endparallel

call sub1()
print *,"pass"

end

subroutine sub1()
save
pointer (ip1,var1)
pointer (ip2,var2)
integer var1,var2,i1,i2

!$omp threadprivate(ip2)

ip1=loc(i1)
ip2=loc(i2)
i1=1
i2=2
!$omp parallel default(firstprivate) 
!$omp single
if (1.eq.2) then
  if (var1.ne.1) write(6,*) "NG"
  if (var2.ne.2) write(6,*) "NG"
  ip1=1
  var2=1
end if
!$omp end single
!$omp endparallel

end
