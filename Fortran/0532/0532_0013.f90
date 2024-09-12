   interface
      subroutine set_services_interface
      end subroutine set_services_interface
    end interface
 
   type :: cap_parameters
      integer :: set_services
   end type cap_parameters

 type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr
  end type cap_parameters_wrapper
    procedure(set_services_interface) :: root_set_services 

    type(cap_parameters_wrapper) :: wrapper
    type(cap_parameters), pointer :: ptr
    type(cap_parameters), pointer :: ptr_array(:)
allocate(ptr,ptr_array(1),wrapper%ptr)
   ptr = cap_parameters( 1)
   ptr_array(1) = cap_parameters( 1)
   wrapper%ptr = cap_parameters( 1)
print *,'pass'
end
