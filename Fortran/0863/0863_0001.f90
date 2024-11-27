module mod
   interface
      subroutine set_services_interface(gc, rc)
        integer, intent(out) :: rc
      end subroutine set_services_interface
    end interface
 
   type :: cap_parameters
      character(len=:), allocatable :: name, cap_rc_file
      procedure(set_services_interface), nopass, pointer :: set_services
   end type cap_parameters

 type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr
  end type cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr
contains
   subroutine add_wrapper_comp(driver, name, cap_rc_file, root_set_services,     pet_list, wrapper_gc, rc)
    character(len=*), intent(in) :: name, cap_rc_file
    procedure(set_services_interface) :: root_set_services 
    integer, intent(in), optional :: pet_list(:)
     integer, intent(out) :: rc

    type(cap_parameters_wrapper) :: wrapper

   wrapper%ptr = cap_parameters(name, cap_rc_file, root_set_services)
   ptr = cap_parameters(name, cap_rc_file, root_set_services)
end
end
print *,'pass'
end
