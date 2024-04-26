use,intrinsic::iso_fortran_env,only:compiler_options
if (1.eq.2)print *,compiler_options()
if (compiler_options() .eq.' ') print *,'err'
print *,'pass'
end
