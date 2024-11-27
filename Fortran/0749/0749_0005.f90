character(3)::a='123'
character(3),allocatable::aa
character(:),allocatable::b
allocate(b,mold=a)
print *,b//'#'
allocate(aa)
print *,aa//'#'
allocate(b,source=a)
print *,b//'#'
end
