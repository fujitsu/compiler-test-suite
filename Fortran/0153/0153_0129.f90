subroutine s1
integer a03,a02,a05,a06
a02=-2
a03=-3
a05=-5
a06=-6
!$omp parallel
block
a01=2
end block
block 
 integer::a02
end block 
block 
integer:: a03
a03=3
end block
block
!$omp parallel 
a04=41
!$omp end parallel
end block
block
integer a05
!$omp parallel
a05=51
!$omp end parallel
end block
block
integer a06
a06=61
!$omp parallel
a06=a06+1
!$omp end parallel
if (a06<=61) print *,10007
end block
!$omp end parallel
if (a01/=2) print *,10001
if (a02/=-2) print *,10002
if (a03/=-3) print *,10003
if (a04/=41) print *,10004
if (a05/=-5) print *,10005
if (a06/=-6) print *,10006
end
call s1
print *,'pass'
end
