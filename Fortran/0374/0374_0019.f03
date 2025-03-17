use iso_fortran_env,only: OUTPUT_UNIT
if (OUTPUT_UNIT.ne.4) print *,'fail'
print *,'pass'
end

module iso_fortran_env
 integer,parameter:: OUTPUT_UNIT=4
end module
