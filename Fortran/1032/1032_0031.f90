program main

implicit none

type a_type
    character(len=8) :: n
end type a_type

type b_type
  type(a_type), pointer ::   a(:)
end type b_type

type(b_type) :: b

print *,'pass'
contains 

subroutine c(b) 
   type(b_type) :: b
   character(len=len_trim(b%a(1)%n)) :: n
end subroutine c

end program main
