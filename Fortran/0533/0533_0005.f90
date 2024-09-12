subroutine test1()
   type :: cap_parameters
      integer :: i1
      procedure(set_services_interface), nopass, pointer :: set_services
      integer :: i2
   end type cap_parameters
    procedure(set_services_interface) :: root_set_services
    type(cap_parameters), pointer :: ptr_array(:)
    allocate(ptr_array(5),source=cap_parameters( i1=1,set_services=root_set_services,i2=2))
if (ptr_array(2)%i1.ne.1) print *,'err4'
if (ptr_array(2)%i2.ne.2) print *,'err5'
    r= ptr_array(2)%set_services()
if (r.ne.1) print *,'err6'
contains
    function   set_services_interface()
     set_services_interface=1
    end function   set_services_interface
end
subroutine test2()
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
      integer :: i3
   end type cap_parameters

  type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr(:)
  end type cap_parameters_wrapper
    procedure(set_services_interface) :: root_set_services_2

   type(cap_parameters_wrapper) :: wrapper
   allocate(wrapper%ptr(2),source=cap_parameters( i3=3,set_services=root_set_services_2))
if (wrapper%ptr(1)%i3.ne.3) print *,'err'
  r= wrapper%ptr(1)%set_services()
if (r.ne.2) print *,'err1'
contains
  function   set_services_interface()
   set_services_interface=1
  end function   set_services_interface
end

common /com/ ii
call test1()
if (ii.ne.100) print *,'err2'
call test2()
if (ii.ne.200) print *,'err3'
print *,'pass'
end
function   root_set_services()
common /com/ ii
ii=100
root_set_services=1
end
function   root_set_services_2()
common /com/ ii
ii=200
root_set_services_2 =2
end
