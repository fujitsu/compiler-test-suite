use iso_c_binding,only:c_sizeof
use iso_fortran_env,only:compiler_version
parameter (k=sizeof(1),kk=dreal((1._8,1._8))) 
character(*),parameter::z=compiler_version()
if (sizeof(1)/=4) print *,101
if (c_sizeof(1)/=4) print *,102
if (k        /=4) print *,103
if (kk       /=1) print *,104
if (dreal((1._8,1._8))/=1) print *,105
write(1,*) z
print *,'pass'
end
