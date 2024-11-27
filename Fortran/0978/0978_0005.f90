module iso_fortran_env
integer:: a=1
end
use,non_intrinsic::iso_fortran_env
if (a/=1)write(6,*) "NG"
print *,'pass'
end

