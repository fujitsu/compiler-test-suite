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

allocate(wrapper%ptr)
   wrapper%ptr = cap_parameters( root_set_services)
call wrapper%ptr%set_services
rewind 3
read(3,*) k
if (k/=890) print *,900
print *,'pass'
end
      subroutine root_set_services
write(3,*)890
      end subroutine 
