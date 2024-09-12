subroutine s1
character(:),pointer::p(:)
character(2),target::t(3)=(/'12','34','56'/)
p=>t
!$omp parallel private(p)
!$omp single
p=>t
  if (len(p)/=2)print *,len(p)
  if (size(p)/=3)print *,size(p)
  if (sizeof(p)/=6)print *,sizeof(p)
  if (any(p/=t))print *,p
  p=>t(1:3:2)(2:2)
  if (len(p)/=1)print *,len(p)
  if (size(p)/=2)print *,size(p)
  if (sizeof(p)/=2)print *,sizeof(p)
  if (any(p/=t(1:3:2)(2:2)))print *,p
!$omp end single
!$omp end parallel
end
call s1
print *,'pass'
end
