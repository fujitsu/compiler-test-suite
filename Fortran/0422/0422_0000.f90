 character(:),allocatable:: c,cc(:)
 character(3),allocatable:: z
 integer     ,allocatable:: k
c='12345'
if (len(c)/=5 .or. c/='12345') then
print *,len(c),c
endif
cc=['12345','12345']
if (len(cc)/=5 .or. size(cc)/=2 .or. any(cc/='12345') ) then
print *,len(cc),cc
endif
z='12345'
if (len(z)/=3 .or.    (z/='123')) then
print *,len(z),z
endif
k=1
if (k/=1) then
print *,k
endif
print *,'pass'
end
 
