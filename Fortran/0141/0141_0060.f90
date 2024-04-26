integer,allocatable::p
allocate(p)
p=1
if (p/=1) p=2
print *,'pass'
end
