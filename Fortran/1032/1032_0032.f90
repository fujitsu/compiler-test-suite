program main

implicit none

type a_type
    character(len=8) :: n
end type a_type

type b_type
  type(a_type), pointer ::   a(:)
end type b_type

type(b_type) :: b
allocate(b%a(10))
b%a(1)%n = "hello"
call c(b)

call chk
print *,'pass'
contains 

subroutine c(b) 
   type(b_type) :: b
   character(len=len_trim(b%a(1)%n)) :: n
   write(1,*) b%a(1)%n
   write(1,*) len(n)
end subroutine c

subroutine chk
character*7 c
integer i
rewind 1
read(1,'(a)') c
if (c/=' hello')print *,'error'
read(1,*) i
if (i/=5)print *,'error-2'
end subroutine

end program main
