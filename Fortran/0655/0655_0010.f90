integer,allocatable:: a(:)
allocate(a(10))
a=1
a(::1)=a
print *,'pass'
end
