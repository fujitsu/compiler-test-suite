pure subroutine s1(result1,result2)
   use , intrinsic :: iso_fortran_env,only:compiler_version,compiler_options
   character,dimension(100),intent(out)  :: result1, result2
   result1 = compiler_version()
   result2 = compiler_options()
end
character,dimension(100) :: a,b
call s1(a,b)
print *,"pass"
end
