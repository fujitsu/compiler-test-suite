call test01()
call test02()
print *,'pass'
end

subroutine test01()
!$omp parallel private(i,k,j)
!$omp single
i=1; j=2; k=3
call isub(i,j,k)
if (i.ne.11) print *,'err01'
if (j.ne.12) print *,'err02'
if (k.ne.13) print *,'err03'
!$omp endsingle
!$omp end parallel
!$omp parallel shared(i,j,k)
!$omp single
i=1; j=2; k=3
call isub(i,j,k)
if (i.ne.11) print *,'err04'
if (j.ne.12) print *,'err05'
if (k.ne.13) print *,'err06'
!$omp endsingle
!$omp end parallel
!$omp parallel private(i,k,j)
!$omp single
i=1; j=2; k=3
call esub(i,j,k)
if (i.ne.11) print *,'err07'
if (j.ne.12) print *,'err08'
if (k.ne.13) print *,'err09'
!$omp endsingle
!$omp end parallel
!$omp parallel shared(i,j,k)
!$omp single
i=1; j=2; k=3
call esub(i,j,k)
if (i.ne.11) print *,'err10'
if (j.ne.12) print *,'err11'
if (k.ne.13) print *,'err12'
!$omp endsingle
!$omp end parallel
contains
subroutine isub(ii,jj,kk)
ii=ii+10
jj=jj+10
kk=kk+10
end subroutine
end subroutine

subroutine esub(ii,jj,kk)
ii=ii+10
jj=jj+10
kk=kk+10
end subroutine

subroutine test02()
!$omp parallel
!$omp single
call iaoo1()
!$omp endsingle
!$omp endparallel
contains
subroutine iaoo1()
integer a(10,10),b(10,10),c(10,10)
 a=1
 b=5
 c=0
 do j=1,10
   do k=1,10
     do i=1,10
       c(i,j)=c(i,j)+a(i,k)*b(k,j)
     enddo
   enddo
 enddo
end subroutine
end
