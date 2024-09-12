subroutine s1
character(:),pointer::p(:)
character(2),target::t(3)=(/'12','34','56'/)
integer(8)i,k
common /cmn/i,p,k
i=100
k=200
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
 if (i/=100)print *,i
 if (k/=200)print *,'error',k
end
call s1
print *,'pass'
end
