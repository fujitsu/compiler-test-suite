module derived_type
 type extyp 
  integer :: comp1
 endtype
endmodule

module explicit_interface
 contains
  subroutine sub_mod(pdt)
   use derived_type
   type(extyp) :: pdt
  endsubroutine sub_mod
end module 

program sneh1029 
 use explicit_interface
 use derived_type
 type(extyp) :: pd
 call sub_int(pd)
 contains
  subroutine sub_int(pdt)
   use derived_type
   type(extyp)         :: pdt
  endsubroutine sub_int
end program
