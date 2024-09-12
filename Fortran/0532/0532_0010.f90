   interface
      subroutine set_services_interface
      end subroutine set_services_interface
    end interface
 
   type :: cap_parameters
      procedure(set_services_interface), nopass, pointer :: set_services
   end type cap_parameters

  type :: cap_parameters_wrapper
     type(cap_parameters), pointer :: ptr(:)
  end type cap_parameters_wrapper
    procedure(set_services_interface) :: root_set_services 

    type(cap_parameters_wrapper) :: wrapper(1),wrapper_s
    type(cap_parameters), pointer :: ptr
    type(cap_parameters), pointer :: ptr_array(:)

 type :: ty1
    type(cap_parameters_wrapper) :: wrapper(1),wrapper_s
 end type

 type(ty1) :: str1,str1a(1)

 type :: ty2
 type(ty1) :: str2,str2a(1)
 end type
 type(ty2) :: str3,str3a(1)
integer :: jj
jj=1

 allocate(ptr,ptr_array(1), wrapper(1)%ptr(1),wrapper_s%ptr(1))
 allocate(str1%wrapper(1)%ptr(100))
 allocate(str1a(1)%wrapper(1)%ptr(100))
 allocate(str3%str2%wrapper(1)%ptr(100))
 allocate(str3%str2a(1)%wrapper(1)%ptr(100))
 allocate(str3a(1)%str2%wrapper(1)%ptr(100))
 allocate(str3a(1)%str2a(1)%wrapper(1)%ptr(100))
 allocate(str1%wrapper_s %ptr(100))
 allocate(str1a(1)%wrapper_s %ptr(100))
 allocate(str3%str2%wrapper_s %ptr(100))
 allocate(str3%str2a(1)%wrapper_s %ptr(100))
 allocate(str3a(1)%str2%wrapper_s %ptr(100))
 allocate(str3a(1)%str2a(1)%wrapper_s %ptr(100))
   ptr = cap_parameters( root_set_services)
   ptr_array(1+jj-jj) = cap_parameters( root_set_services)
   wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str1%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str1a(1+jj-jj)%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str1%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str1a(1+jj-jj)%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3%str2%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str3%str2%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3%str2a(1+jj-jj)%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str3%str2a(1+jj-jj)%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2a(1+jj-jj)%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2a(1+jj-jj)%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2a(1+jj-jj)%wrapper(1+jj-jj)%ptr = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2a(1+jj-jj)%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
   str3a(1+jj-jj)%str2a(1+jj-jj)%wrapper_s%ptr(1+jj-jj) = cap_parameters( root_set_services)
print *,'pass'
end
subroutine root_set_services
end
