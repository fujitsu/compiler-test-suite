complex(4),allocatable::aaa
real(4),allocatable::bbb
namelist /nama/aaa
namelist /namb/bbb
allocate(aaa,bbb)
aaa=1
bbb=1
write(1,namb)
write(1,nama)
print *,'pass'
end
