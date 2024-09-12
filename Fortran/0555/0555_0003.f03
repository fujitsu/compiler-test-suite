implicit class(*)(d)
allocatable::dptr

type ty
integer::i
end type 
allocate (ty::dptr)
if (ALLOCATED(dptr)) then
print *,"PASS"
else
print *,"FAIL"
endif

end
