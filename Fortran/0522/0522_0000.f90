integer::aaa(3),bbb(3)
!$omp parallel do ordered lastprivate(aaa)
do k1=0,0
aaa(1)=int(k1)
aaa(2)=int(k1)
aaa(3)=int(k1)
!$omp ordered threads
!$omp end ordered
enddo
if(any(aaa/=[0,0,0])) print *,'err1'

!$omp  do ordered
do k1=0,0
bbb(1)=int(k1)
bbb(2)=int(k1)
bbb(3)=int(k1)
!$omp ordered threads
!$omp end ordered
enddo
if(any(bbb/=[0,0,0])) print *,'err2'
print *,'pass'
end
