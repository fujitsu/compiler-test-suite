interface
 subroutine sub(i)
  integer i
 end subroutine
 subroutine func3(i)
  interface
   subroutine func4(i)
    integer i
   end subroutine
  end interface
  procedure(func4),pointer:: i
 end subroutine
end interface

procedure (sub), pointer :: psp
psp=>sub

call func3(psp)

print *,'pass'

end

subroutine sub(i)
 integer i
 i=1
end subroutine

subroutine func3(i)
 interface
  subroutine func4(i)
   integer i
  end subroutine
 end interface
 procedure(func4),pointer:: i,j
 j=>i
 call j(kk)
 if (kk/=1) print *,'fail'
end subroutine

