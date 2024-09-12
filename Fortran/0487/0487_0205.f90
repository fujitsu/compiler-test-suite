integer,pointer:: p(:)
allocate (p(2))
k=1
p=1
if (any(p/=1)) print *,101
p(:)=2
if (any(p/=2)) print *,102
p((k))=1
if (any(p/=[1,2])) print *,102
p((k-k+1+k))=3
if (any(p/=[1,3])) print *,104
p((k-k+1+k-K+1-k))=4
if (any(p/=[4,3])) print *,105
print *,'pass'
end
