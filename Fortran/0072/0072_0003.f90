complex(4),allocatable::aaa
real(4),allocatable::bbb
namelist /nama/aaa
namelist /namb/bbb
allocate(aaa,bbb)
aaa=1
bbb=1
write(4,namb)
write(4,nama)
print *,'pass'
end
