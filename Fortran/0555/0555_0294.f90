PROGRAM MAIN
type t1
integer :: i 
end type 

type, extends(t1) ::t2
real::r
end type

CLASS(*),POINTER::arrptr_base(:) => null()
CLASS(t2),POINTER::arrptr_deriv2(:) => null()
call sub(arrptr_base,arrptr_deriv2)
contains 

    SUBROUTINE sub(arrdmyptr_base,arrdmyptr_deriv2)
      CLASS(*),POINTER:: arrdmyptr_base(:)
      CLASS(t2),POINTER:: arrdmyptr_deriv2(:)

      allocate(arrdmyptr_deriv2(10))
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
