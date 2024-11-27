character(1),allocatable::a(:),b(:)
integer:: err
allocate(a,source=(/"1"/),stat=err)
allocate(a,b,source=(/"1"/))
end
