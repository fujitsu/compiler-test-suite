print *,'pass'
end

subroutine test01(ia,ib,ic,id,ie,if,ih,jj)
common/com01/ i1,i2,i3,i4,iarr(10)
integer ia(i1)
integer ib(i2+10)
integer ic(iarr(i3))
integer id(10)
integer ie(*)
integer if(:)
integer ih(jj)

!$omp threadprivate(/com01/)

!$omp parallel private(ia,ib,ic,id,ih,jj) 
ia(1:i1)=1
ib(1:i2+10)=1
id(1:10)=1
ie(1:1)=1
if(1:1)=1
ih(1:1)=1
!$omp end parallel
end
