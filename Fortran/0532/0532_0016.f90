   interface
      subroutine set_services_interface
      end subroutine set_services_interface
    end interface
 
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
   end type cap_parameters

 type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr
  end type cap_parameters_wrapper
    procedure(set_services_interface) :: root_set_services 

    type(cap_parameters_wrapper) :: wrapper
    type(cap_parameters):: ptr
    type(cap_parameters):: ptr_array(1)
allocate(wrapper%ptr)

   ptr = cap_parameters( root_set_services)!1766
!234567890123456789012345678901234
   ptr_array(1) = cap_parameters( root_set_services)!1766
   wrapper%ptr = cap_parameters( root_set_services)!1766
print *,'pass'
end
      subroutine set_services_interface
      end subroutine set_services_interface
      subroutine root_set_services
      end subroutine 
