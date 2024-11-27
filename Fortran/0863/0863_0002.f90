module mod
   abstract interface
      subroutine set_services_interface(gc, rc)
        integer, intent(out) :: rc
      end subroutine set_services_interface
    end interface
 
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
   end type cap_parameters

 type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr
  end type cap_parameters_wrapper
contains
   subroutine add_wrapper_comp(root_set_services)
    procedure(set_services_interface) :: root_set_services 

    type(cap_parameters_wrapper) :: wrapper

   wrapper%ptr = cap_parameters( root_set_services)
end
end
print *,'pass'
end
