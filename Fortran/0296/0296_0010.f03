use,intrinsic:: iso_fortran_env
character(len(compiler_version()))::ch1(10)
character(len(compiler_options()))::ch2(10)
ch1=compiler_version()
ch2=compiler_options()
if(len(ch1)/=len(compiler_version())) print *,'err1'
if(len(ch2)/=len(compiler_options())) print *,'err2'
do concurrent(i=1:10)
if(ch1(i)/=compiler_version()) print *,'err3'
if(ch2(i)/=compiler_options()) print *,'err4'
end do
print *,'pass'
end
