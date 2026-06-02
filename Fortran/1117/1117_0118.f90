call test01()
call test02()
rewind 6
print *,'pass'
end

subroutine test02()
common /com03/i,ia(10),ic(10)
integer ::    j,ja(10),jc(10)
common /com04/k,ka(10),kc(10)
namelist /na1/i,ia,ic
namelist /na2/j,ia,jc
namelist /na3/j,ja,jc
namelist /na4/k,ja,jc
namelist /na5/j,ka,jc
namelist /na6/j,ja,kc
namelist /na7/k,ka,kc
namelist /na8/i,ka,jc
namelist /na9/j,ia,kc
namelist /na0/k,ka,ic
rewind 21
i=1;ia=1;ic=1
j=1;ja=1;jc=1
k=1;ka=1;kc=1
write(21,na1)
write(21,na2)
write(21,na3)
write(21,na4)
write(21,na5)
write(21,na6)
write(21,na7)
write(21,na8)
write(21,na9)
write(21,na0)

!$omp parallel shared(/com04/)
i=1;ia=1;ic=1
j=1;ja=1;jc=1
k=1;ka=1;kc=1
write(21,na1)
write(21,na2)
write(21,na3)
write(21,na4)
write(21,na5)
write(21,na6)
write(21,na7)
write(21,na8)
write(21,na9)
write(21,na0)
!$omp end parallel

!$omp parallel
i=1;ia=1;ic=1
j=1;ja=1;jc=1
k=1;ka=1;kc=1
write(21,na1)
write(21,na2)
write(21,na3)
write(21,na4)
write(21,na5)
write(21,na6)
write(21,na7)
write(21,na8)
write(21,na9)
write(21,na0)
!$omp end parallel

!$omp parallel default(private)
i=1;ia=1;ic=1
j=1;ja=1;jc=1
k=1;ka=1;kc=1
write(21,na1)
write(21,na2)
write(21,na3)
write(21,na4)
write(21,na5)
write(21,na6)
write(21,na7)
write(21,na8)
write(21,na9)
write(21,na0)
!$omp end parallel

!$omp parallel default(shared)
i=1;ia=1;ic=1
j=1;ja=1;jc=1
k=1;ka=1;kc=1
write(21,na1)
write(21,na2)
write(21,na3)
write(21,na4)
write(21,na5)
write(21,na6)
write(21,na7)
write(21,na8)
write(21,na9)
write(21,na0)
!$omp end parallel

end

subroutine test01()
common /com01/i,ia(10),ic(10)
!$omp threadprivate(/com01/)
common /com02/j,ja(10),jc(10)

i=1
ja=1
forall (j=1:10)
  jc(i:)=ja(j)
end forall

ia=1
forall (i=1:10)
  ic(:)=ia(i)
end forall

CALL OMP_SET_NUM_THREADS(1)
!$omp parallel
forall (i=1:10)
  ic(:)=ia(i)
end forall
!$omp end parallel

j=1
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel shared(/com02/)
forall (i=1:10)
  jc(j:)=ia(i)
end forall
!$omp end parallel

j=1
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel shared(/com02/)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel shared(/com02/)
forall (i=1:10)
  jc(j:)=ia(i)
end forall
!$omp end parallel
!$omp end parallel

end
