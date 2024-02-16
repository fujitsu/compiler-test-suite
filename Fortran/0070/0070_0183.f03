module m0
character(:),pointer::x
namelist /nama/x
end
use m0
allocate(x,source="111")
write(*,nml=nama)
print *,'pass'
end
