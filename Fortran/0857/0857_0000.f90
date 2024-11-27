 use, intrinsic :: iso_fortran_env,only:compiler_version
 use, intrinsic :: iso_fortran_env,only:compiler_options
 character,parameter ::cv=COMPILER_VERSION()
 character,parameter ::co=COMPILER_OPTIONS()
 if( cv/="j") print *, cv
 if( co/="-") print *, co
 print *, "pass"
 end
