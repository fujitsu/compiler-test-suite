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
    type(cap_parameters), pointer :: ptr_array(:)
allocate(ptr)
   ptr = cap_parameters( root_set_services)
   allocate(ptr,source = cap_parameters( root_set_services))
print *,'pass'
end
subroutine root_set_services
end