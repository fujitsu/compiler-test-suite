PROGRAM MAIN
type t1
integer :: i 
end type 

type, extends(t1) ::t2
real::r
end type

CLASS(*),POINTER::arrptr_base(:) => null()
TYPE(t2),target::arrptr_deriv2(5)
call sub(arrptr_base,arrptr_deriv2)
contains 

    SUBROUTINE sub(arrdmyptr_base,arrdmyptr_deriv2)
      CLASS(*),POINTER:: arrdmyptr_base(:)
      TYPE(t2),target:: arrdmyptr_deriv2(5)
      arrdmyptr_deriv2%i=5
      arrdmyptr_deriv2(1)%r=10.00       

      if(ASSOCIATED(arrdmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      arrdmyptr_base=>arrdmyptr_deriv2      

      if(ASSOCIATED(arrdmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE
END PROGRAM
