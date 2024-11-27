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
end

use mod
    procedure(set_services_interface) :: root_set_services 

    type(cap_parameters_wrapper) :: wrapper

 allocate(wrapper%ptr)
   wrapper%ptr = cap_parameters( root_set_services)
call  wrapper%ptr%set_services(1.0,kk)
if (kk/=1) print *,809
rewind 1
read(1,*) k
if (k/=9008)print *,988
print *,'pass'
end
      subroutine root_set_services(gc, rc)
        integer, intent(out) :: rc
        rc=gc
write(1,*) 9008
      end subroutine
