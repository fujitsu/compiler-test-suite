subroutine s1
integer,allocatable:: a1(:),a2(:),a3(:),a4(:)
allocate( a1(2),a2(2), a3(2), a4(2) , source= [1,2])

!$omp parallel private(a1) firstprivate(a2) reduction(+:a3,a4)
  a1=[11,12]
  a2=a2+1
  a3=a3+1
  a4=a4+1
  if (any(a1/=[11,12])) print *,101
  if (any(a2/=[2,3])) print *,102
  if (any(a3/=1    )) print *,103,a3
  if (any(a4/=1    )) print *,104,a4
!$omp end parallel

  if (any(a1/=[1,2])) print *,1101
  if (any(a2/=[1,2])) print *,1102
  if (any(a3< [3,4])) print *,1103,a3
  if (any(a4< [3,4])) print *,1104,a4
end
call s1
print *,'pass'
end
