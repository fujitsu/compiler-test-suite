integer iii,jjj(3),kkk
kkk=10
!$omp parallel do
do iii=1,kkk-7
!$omp atomic write
jjj(iii)=-kkk
!$omp end atomic
end do
!$omp end parallel do
if(any(jjj/=[-10,-10,-10])) print *,'err'
print *,'pass'
end
