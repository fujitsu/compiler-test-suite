call test01()
call test02()
call test03()
rewind 6
print *,'pass'
end

subroutine test03()
call sub1()
contains
subroutine sub1()
common /com00/ ii,jj,kk
common /com01/ i,j,k
common /com02/ ia(10),ib(10),ic(10)
common /com03/ v
!$omp threadprivate(/com01/)
!$omp threadprivate(/com02/)
!$omp threadprivate(/com03/)
!$omp parallel private(/com00/)
jj=1
!$omp end parallel
end subroutine
subroutine sub2()
common /com03/ v
!$omp threadprivate(/com03/)
v=1
end subroutine
subroutine sub3()
common /com01/ i,j,k
common /com02/ ia(10),ib(10),ic(10)
common /com03/ v
!$omp threadprivate(/com02/)
!$omp threadprivate(/com03/)
!$omp threadprivate(/com01/)
end subroutine
end

subroutine test02()
integer arr(10),brr(10)
call sub()
contains
subroutine sub()
!$omp parallel private(arr,brr)
arr=1
brr=2
   rewind 19
   write(19,*) (arr(j),j=1,10)
!$omp end parallel
end subroutine
end

subroutine test01()
common /com/ i,j,k
common /coma/ arr,brr
integer,dimension(10) :: arr,brr,ib,ic
arr=(/(i,i=1,10)/)
k=10
ib=1
ic=2
brr=3
!$omp parallel do firstprivate(/com/,/coma/)
do i=1,1
   rewind 16
   write(16,*) (arr(j),j=1,10)
   rewind 16
   read(16,*) brr
   if (all(brr.ne.arr,1))print *,"fail"
end do
!$omp end paralleldo

!$omp do firstprivate(/com/,/coma/)
do i=1,1
   rewind 17
   write(17,*) (arr(j),j=1,10)
   rewind 17
   read(17,*) brr
   if (all(brr.ne.arr,1))print *,"fail"
end do
!$omp end do

!$omp do firstprivate(/com/,/coma/)
do i=1,1
   rewind 17
   write(17,*) (arr(j)+1,j=1,10)
   rewind 17
   read(17,*) brr
   if (all(brr.ne.arr+1,1))print *,"fail"
end do
!$omp end do
!$omp parallel do firstprivate(/com/,/coma/)
do i=1,1
   rewind 18
   write(18,*) (arr(j),j=1,k)
   write(18,*) (arr(j)+k,j=1,10)
   write(18,*) (arr(j+i),j=0,9)
   write(18,*) (arr(j*i),j=1,10)
   write(18,*) (arr(j*1+1-i),j=1,10)
   write(18,*) (ib(1),arr(1),j=1,10)
   write(18,*) (arr(j),brr(j),brr(j),brr(j),brr(j),brr(j),j=1,10)
   write(18,*) (ib(j),arr(i),ib(j),ib(j),ib(j),ib(j),ib(j),ib(j),ib(j),j=1,10)
   write(18,*) (arr(i),ib(j),ib(j),ib(j),j=1,10)
   write(18,*) (ib(j),ib(j),ib(j),j=1,10)
   write(18,*) (arr(i),ib(j),ib(j),ib(j),brr(i),j=1,10)
   write(18,*) arr(1:i:1)
   write(18,*) arr(:i:1)
   write(18,*) arr(1:i:1)
   write(18,*) arr(1:i)
   write(18,*) arr(:)
   write(18,*) arr(::i)
   write(18,*) arr(:),((brr,j=1,1),ic(1),k=1,1)
end do
!$omp end paralleldo
end
