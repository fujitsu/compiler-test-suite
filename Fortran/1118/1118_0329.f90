call aaaaa
print *,'pass'
end
subroutine aaaaa
integer*1 i1
integer*2 i2 
integer*4 i4
integer*8 i8
real*4  r
real*8  d
real*16 q
complex*8 c
complex*16 dc
complex*32 qc
character*1 cha
!$omp parallel
!$omp task private(i1)
i1=1
!$omp task private(i2)
i2=2
!$omp task private(i4)
i4=4
!$omp task private(i8)
i8=8
!$omp task private(r)
r=4
!$omp task private(d)
d=8
!$omp task private(q)
q=16
!$omp task private(c)
c=8
!$omp task private(dc)
dc=16
!$omp task private(qc)
qc=32
!$omp task private(cha)
cha='a'
if(cha.ne.'a') print *,'err1'
!$omp endtask
if(qc.ne.(32.0q0,0.0q0)) print *,'err2'
!$omp endtask
if(dc.ne.(16.0d0,0.0d0)) print *,'err3'
!$omp endtask
if(c.ne.(8.0,0.0)) print *,'err4'
!$omp endtask
!$omp endtask
if(d.ne.8.0d0) print *,'err6'
!$omp endtask
if(r.ne.4.0) print *,'err7'
!$omp endtask
if(i8.ne.8) print *,'err8'
!$omp endtask
if(i4.ne.4) print *,'err9'
!$omp endtask
if(i2.ne.2) print *,'err10'
!$omp endtask
if(i1.ne.1) print *,'err11'
!$omp endtask  
!$omp endparallel
end
