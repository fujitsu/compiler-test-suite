use , intrinsic :: iso_c_binding

interface
 function ifunc01() bind(c) result(irst01)
  integer(kind = 4) :: irst01
 end function
end interface

procedure(integer(kind = 4)), pointer :: piprocp01
procedure(character(len=1)),  pointer :: pcprocp01
procedure(),                  pointer :: pprocp01
procedure(),                  pointer :: iirocp01
type (c_funptr) :: cfptr_01

piprocp01 => null()
pcprocp01 => null()
pprocp01  => null()
iirocp01  => null()

cfptr_01 = c_funloc(ifunc01)

call c_f_procpointer(cfptr_01, piprocp01)
print *,c_associated(cfptr_01)

print *,piprocp01()  

call c_f_procpointer(cfptr_01, pcprocp01)
print *,c_associated(cfptr_01)

print *,pcprocp01()  

call c_f_procpointer(cfptr_01, pprocp01)
print *,c_associated(cfptr_01)

print *,pprocp01()   

call c_f_procpointer(cfptr_01, iirocp01)
print *,c_associated(cfptr_01)

print *,iirocp01()   


end

function ifunc01() bind(c) result(irst01)
 integer(kind = 4) :: irst01
 irst01 = 128
end function
