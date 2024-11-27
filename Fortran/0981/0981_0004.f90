integer arr(10)
common /com/ jjj,kkk
!$omp threadprivate(/com/,iii)
!$omp parallel default(firstprivate)
kkk=1
jjj=2
iii=3
!$omp endparallel

!$omp parallel default(firstprivate)
kkk=1
do i=1,10
end do
jjj=2
iii=3
!$omp endparallel
call sub(arr)
call sub1(arr)
print *,"pass"
contains
subroutine sub(brr)
integer brr(*)
brr(1)=1
!$omp parallel default(firstprivate)
if (brr(1).ne.1) write(6,*) "NG"
!$omp endparallel
end subroutine
subroutine sub1(brr)
integer brr(:)
brr(1)=1
!$omp parallel default(firstprivate)
if (brr(1).ne.1) write(6,*) "NG"
!$omp endparallel
end subroutine
subroutine sub2()
integer ,parameter :: brr(1)=1
!$omp parallel default(firstprivate)
if (brr(1).ne.1) write(6,*) "NG"
!$omp endparallel
end subroutine
subroutine sub3(brr,ccc,ext)
integer ,optional :: ccc
integer , external :: ext
integer brr(*)
brr(1)=1
!$omp parallel default(firstprivate)
if (brr(1).ne.1) write(6,*) "NG"
ccc=1
call sssss(ext)
!$omp endparallel
end subroutine



end
subroutine sssss(ext)
integer , external :: ext
end 
