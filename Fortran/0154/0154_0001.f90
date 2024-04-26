use ,intrinsic::iso_fortran_env,only: atomic_int_kind
if (atomic_int_kind/=4) print *,101
print *,'pass'
end
