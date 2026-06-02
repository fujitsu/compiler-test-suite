interface
subroutine test01(arr,op)
save
integer :: arr(*)
integer,optional :: op
integer,pointer :: ip
integer,target  :: it
pointer (ii,jj)
end subroutine
end interface
integer aaa(100)
aaa=1
call  test01(aaa,ii)
print *,"pass"
end

subroutine test01(arr,op)
save
integer :: arr(*)
integer,optional :: op
integer,pointer :: ip
integer,target  :: it
pointer (ii,jj)
!$omp threadprivate(it)
!$omp parallel default(firstprivate)
if (1.eq.2) then
ip=>it
arr(1)=1
op=1
ii=1
endif
!$omp endparallel 
!$omp parallel default(firstprivate)
if (1.eq.2) then
jj=1
endif
!$omp endparallel 
!$omp parallel private(op)
op=1
!$omp endparallel 
end
