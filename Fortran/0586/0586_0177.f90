module mod_type1
  implicit none

  type :: type1
    procedure(type1interface), pointer :: point1
  end type

  interface
    subroutine type1interface(a)
      import type1
      implicit none
      class(type1) :: a

    end subroutine
  end interface

  type, extends(type1) :: type2
    procedure(type2interface), pointer :: point2 
  end type

  interface
    subroutine type2interface(a)
      import type2
      implicit none
      class(type2) :: a

    end subroutine
  end interface

contains
    
    subroutine type1subroutine(a)
      implicit none
      class(type1) :: a
      if(associated(a%point1).neqv..true.)print*,"103"

      

    end subroutine

    subroutine type2subroutine(a)
      implicit none
      class(type2) :: a
      if(associated(a%point1).neqv..true.)print*,"102"


    end subroutine

end module

program main
  use mod_type1 
  implicit none

  type(type2) :: mytype2 
  procedure(type2subroutine), pointer :: mypointer2=>type2subroutine
  procedure(type1subroutine), pointer :: mypointer1=>type1subroutine

  mytype2%point1 => type1subroutine
  mytype2%point2 => type2subroutine
  call mytype2%point1
  call mypointer2(mytype2)
  call mypointer1(mytype2)
  print*,"PASS"

end program

