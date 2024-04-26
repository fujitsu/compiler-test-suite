use,intrinsic:: iso_fortran_env
character(len(compiler_version())),parameter::ch1=compiler_version()
character(len(compiler_options())),parameter::ch2=compiler_options()
call sss(ch1,ch2)
print *,'pass'
contains
subroutine sss(ch1,ch2)
character(*)::ch1,ch2
if(compiler_version()/=ch1) print *,'err1'
if(len(compiler_version())/=len(ch1)) print *,'err2'
if(compiler_options()/=ch2) print *,'err3'
if(len(compiler_options())/=len(ch2)) print *,'err4'
end subroutine
end
