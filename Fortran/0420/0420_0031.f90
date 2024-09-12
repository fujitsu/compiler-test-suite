 character(:),allocatable:: c,cc(:)
type x
 character(:),allocatable:: c,cc(:)
end type
type (x)::v

c='12345'
if (len(c)/=5 .or. c/='12345') then
print *,len(c),c
endif
cc=['12345','12345']
if (len(cc)/=5 .or. size(cc)/=2 .or. any(cc/='12345') ) then
print *,len(cc),cc
endif

v%c='12345'
if (len(v%c)/=5 .or. v%c/='12345') then
print *,len(v%c),v%c
endif
v%cc=['12345','12345']
if (len(v%cc)/=5 .or. size(v%cc)/=2 .or. any(v%cc/='12345') ) then
print *,len(v%cc),v%cc
endif
print *,'pass'
end
