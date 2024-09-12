subroutine test1()
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
   end type cap_parameters
    procedure(set_services_interface) :: root_set_services
    type(cap_parameters), pointer :: ptr_array(:)
    allocate(ptr_array(1),source=cap_parameters( root_set_services))
    call ptr_array(1)%set_services
contains
    subroutine set_services_interface
    end subroutine set_services_interface
end
subroutine test2()
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
   end type cap_parameters

  type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr
  end type cap_parameters_wrapper
    procedure(set_services_interface) :: root_set_services_2

   type(cap_parameters_wrapper) :: wrapper
   allocate(wrapper%ptr,source=cap_parameters( root_set_services_2))
   wrapper%ptr = cap_parameters( root_set_services_2)
  call wrapper%ptr%set_services
contains
  subroutine set_services_interface
  end subroutine set_services_interface
end

common /com/ ii
call test1()
if (ii.ne.100) print *,'err'
call test2()
if (ii.ne.200) print *,'err'
print *,'pass'
end
subroutine root_set_services
common /com/ ii
ii=100
end
subroutine root_set_services_2
common /com/ ii
ii=200
end
