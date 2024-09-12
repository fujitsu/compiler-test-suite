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
     type(cap_parameters), pointer :: ptr
 allocate(ptr)
allocate(wrapper%ptr)
   ptr = cap_parameters( root_set_services)
   wrapper%ptr = ptr
print *,'pass'
end
      subroutine root_set_services
      end subroutine
