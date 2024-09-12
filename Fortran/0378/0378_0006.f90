subroutine s1
character(:),pointer::p
character(2),target::t='12'
p=>t
!$omp parallel private(p)
!$omp single
p=>t
  if (len(p)/=2)print *,len(p)
  if (sizeof(p)/=2)print *,sizeof(p)
  if ((p/=t))print *,p
  p=>t(2:2)
  if (len(p)/=1)print *,len(p)
  if (sizeof(p)/=1)print *,sizeof(p)
  if ((p/=t(2:2)))print *,p
!$omp end single
!$omp end parallel
end
call s1
print *,'pass'
end
