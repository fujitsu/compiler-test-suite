use iso_fortran_env
call sss(compiler_version(),1)
call sss(compiler_options(),2)
print *,'pass'
contains
subroutine sss(x,i)
character(*),intent(in)::x
integer,intent(in)::i
write(i,*) x
end subroutine
end
