type t
integer,allocatable::a(:)
end type
type(t)::tt
allocate(tt%a(2))
!$omp parallel do lastprivate(tt)
do i=1,1
tt%a=[1,2]
enddo
!$omp endparallel do
if(size(tt%a)/=2) print *,'err1'
if(ubound(tt%a,1)/=2) print *,'err2'
print *,'pass'
end
