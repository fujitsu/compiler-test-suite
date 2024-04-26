use,intrinsic::iso_fortran_env,only:compiler_version
if (1.eq.2)print *,compiler_version()
if (compiler_version() .eq.' ') print *,'err'
print *,'pass'
end
