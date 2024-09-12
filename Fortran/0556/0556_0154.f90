class (*) :: ptr
pointer :: ptr
allocate(integer::ptr)
print*,sizeof(ptr),'pass'
end
