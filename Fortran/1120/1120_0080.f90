integer :: ii(10)
ii=(/(i,i=1,10)/)
call test01(ii)
print *,"pass"
contains
subroutine test01(ia)
integer :: ia(*),ib(10)
pointer (ii,jj)
!$omp parallel default(firstprivate) shared(ib)
!$omp single
ib=ia(1:10)
!$omp endsingle
!$omp end parallel
!$omp parallel default(private)
!$omp single
ii=loc(ia)
call isub(ia)
!$omp endsingle
!$omp end parallel
if(ia(1).ne.0) print *,"err"
if(ia(10).ne.0) print *,"err"
end subroutine
subroutine isub(ia)
integer :: ia(*)
ia(1)=0
ia(10)=0
end subroutine
end
