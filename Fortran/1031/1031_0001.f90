MODULE manager_module
  type :: Ref
    character (len =  8)                :: Name
    character (len =400),dimension(20)  :: Trans
    character (len =400),dimension(20)  :: Terms
    character (len =400),dimension(20)  :: Applicable
    character (len =400),dimension(20)  :: N_Applicable
  end type Ref
END MODULE manager_module

program main
   use manager_module
   implicit none
   save
   type(Ref), dimension(5555) :: Changes
   call sort_files (Changes)
print *,'pass'
end program main

Subroutine sort_files (References_dummy)
  use manager_module
  implicit none
  type(Ref), dimension(5555) :: References_dummy
  return
end subroutine sort_files

Subroutine Input_Database ()
  use manager_module
  implicit none
  type(Ref), dimension(5555) :: Reference
  Reference(1)%Name(1:4) = '1234'
  return
End Subroutine Input_Database
