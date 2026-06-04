call test01()
print *,'pass'
end

subroutine test02()
integer a01(10),a02(10)
a01=1
a02=1
do ia=1,10
!$omp atomic
a01(ia)=max(a01(ia),1)
!$omp parallel
a02(ia:ia)=max(a02(ia:ia),1)
!$omp endparallel
!$omp parallel default(shared)
a02(ia:ia)=max(a02(ia:ia),1)
do ib=1,10
a02(ia:ia)=max(a02(ia:ia),1)
end do
!$omp endparallel
!$omp parallel default(private)
a02(ia:ia)=max(a02(ia:ia),1)
do ib=1,10
a02(ia:ia)=max(a02(ia:ia),1)
end do
!$omp endparallel
!$omp parallel firstprivate(a02,ia)
a02(ia:ia)=max(a02(ia:ia),1)
!$omp endparallel
end do

end subroutine

subroutine test01()
integer a01(10)
integer a02(10,10)
character*10 cha01
character*10 cha02(10)
!$omp parallel default(private)
   a01=1
   a02=1
   cha01='a'
   cha02='1'
   write(20,*) (a01(i),i=1,10)
   write(20,*) ((a02(i,j),i=1,10),j=1,10)
   write(20,*) (cha01(i:i),i=1,10)
   write(20,*) (cha02(i)(i:i),i=1,10)
   k=0
   write(20,*) (a01(i+k),i=1+k,10+k)
   write(20,*) ((a02(i+k,j+k),i=1,10+k),j=1,10)
   write(20,*) (cha01(i+k:i+k),i=1,10+k)
   write(20,*) (cha02(i+k)(i+k:i+k),i=1+k,10)
   write(20,*) (a01(i),k,i=1,10)
   write(20,*) ((a02(i,j),k,i=1,10),j=1,10)
   write(20,*) (cha01(i:i),k,i=1,10)
   write(20,*) (cha02(i)(i:i),k,i=1,10)
   write(20,*) (a01(i),1,i=1,10),k
   write(20,*) ((a02(i,j),1,i=1,10),j=1,10),k
   write(20,*) (cha01(i:i),1,i=1,10),k
   write(20,*) (cha02(i)(i:i),1,i=1,10),k
!$omp endparallel
      end
