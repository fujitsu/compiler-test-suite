module m1
 integer,pointer,dimension(:,:,:,:,:)::a1
 integer,pointer,dimension(:,:,:,:)::p
 integer::ps
end
subroutine s1
use m1
allocate(a1(1:6,2:36,2:36,2:36,2))
ps=1
end
subroutine s2
use m1
p=>a1(1:,1:,1:,1:,ps)
print *,lbound(p)
print *,ubound(p)
print *,shape(p)
end
print *,'pass'
end
