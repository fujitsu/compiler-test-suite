   interface
      function   set_services_interface()
      end 
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
   allocate(ptr,ptr_array(1),wrapper%ptr)
   ptr = cap_parameters( root_set_services)
   ptr_array(1) = cap_parameters( s)
   wrapper%ptr = cap_parameters( s)
print *,'pass'
contains
      function   s()
      end
end
subroutine root_set_services
end
