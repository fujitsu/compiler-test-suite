module mod
contains
subroutine test1()
    procedure(set_services_interface) :: root_set_services
    procedure(set_services_interface) :: root_set_services_2
   type :: cap_parameters
      integer :: i1=1
      procedure(set_services_interface), nopass, pointer :: set_services=>root_set_services
      procedure(set_services_interface), nopass, pointer :: set_services2=>root_set_services_2
      integer :: i2=2
   end type cap_parameters
    type(cap_parameters), pointer :: ptr_array(:)
    type(cap_parameters), pointer :: ptr_array_2(:)
    allocate(ptr_array(5),ptr_array_2(5))
   icall = isub(cap_parameters( i2=2, i1=1,set_services=root_set_services ,set_services2=root_set_services_2))
if (icall.ne.1) print *,'err6'
if (ptr_array(2)%i1.ne.1) print *,'err4'
if (ptr_array(2)%i2.ne.2) print *,'err5'
    r= ptr_array(2)%set_services()
if (r.ne.1) print *,'err6'
    r= ptr_array_2(1)%set_services()
if (r.ne.1) print *,'err6'
    r= ptr_array(2)%set_services2()
if (r.ne.2) print *,'err6'
contains
    function   set_services_interface()
     set_services_interface=1
    end function   set_services_interface
  function   isub(aaa)
     type(cap_parameters) :: aaa
 allocate(ptr_array(2),ptr_array_2(1)) 
   ptr_array(2) = aaa
   ptr_array_2(1) = aaa
isub=1
  end function  
end
subroutine test2()
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
      integer :: i3
   end type cap_parameters

  type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr(:)
     type(cap_parameters), pointer :: ptr_2(:)
  end type cap_parameters_wrapper
    procedure(set_services_interface) :: root_set_services_2

   type(cap_parameters_wrapper) :: wrapper(10)
   allocate(wrapper(1)%ptr(2),wrapper(1)%ptr_2(1))
   icall = isub(cap_parameters( i3=3,set_services=root_set_services_2))
if (icall.ne.2) print *,'err1'
if (wrapper(1)%ptr(1)%i3.ne.3) print *,'err'
  r= wrapper(1)%ptr(1)%set_services()
if (r.ne.2) print *,'err1'
  r= wrapper(1)%ptr_2(1)%set_services()
if (r.ne.2) print *,'err1'
contains
  function   set_services_interface()
   set_services_interface=1
  end function   set_services_interface
  function   isub(aaa)
     type(cap_parameters) :: aaa
  
   wrapper(1)%ptr(1) = aaa
   wrapper(1)%ptr_2(1) = aaa
isub=2
  end function   
end
end

use mod
common /com/ ii
call test1()
if (ii.ne.200) print *,'err2'
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
