module m0
integer,pointer:: wf
namelist /nama/wf
end
use m0
allocate(wf)
wf=12
write(*,nml=nama)
print *,'pass'
end
