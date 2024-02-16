type ty1
integer::res
end type
type(ty1)::obj1
integer::ii=0
obj1%res = 0
associate(ptr=>obj1)
    open(STATUS='SCRATCH',NEWUNIT=ii)
    write(ii,*)100
    rewind (ii)
    associate(alc=>ptr)
    read(ii,*)alc%res
    end associate
end associate
if (obj1%res/=100)print*,"101"
print*,"pass"
end
