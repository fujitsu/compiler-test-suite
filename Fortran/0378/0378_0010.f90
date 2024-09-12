subroutine s1
character(:),pointer::p
character(2),target::t='12'
integer(8)i,k
common /cmn/i,p,k
i=100
k=200
p=>t
  if (len(p)/=2)print *,len(p)
  if (sizeof(p)/=2)print *,sizeof(p)
  if ((p/=t))print *,p
  p=>t(2:2)
  if (len(p)/=1)print *,len(p)
  if (sizeof(p)/=1)print *,sizeof(p)
  if (p/=t(2:2))print *,p
 if (i/=100)print *,i
 if (k/=200)print *,'error',k
end
call s1
print *,'pass'
end
