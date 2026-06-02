call s1
call s2
print *,'pass'
end
subroutine s1
type :: str
integer :: i
end type
integer::k=-1
j=0
!$omp atomic capture
k=j
j= transfer(str(1),1)
!$omp end atomic
if(j/=1) print *,'err1'
if(k/=0) print *,'err2'
end
subroutine s2
i=0
!$omp atomic capture
j=i
i=transfer(["1"],1_1)
!$omp end atomic
if(i/=49) print *,'err3'
end
