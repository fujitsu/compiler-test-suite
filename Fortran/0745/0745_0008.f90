 module mod_test

   implicit none

 contains

   subroutine init
     logical, save :: first_time=.true.
     write(4,*) first_time
     first_time=.false.
     return
   end subroutine init

   subroutine sub2
     type :: index_list_type
        integer, dimension(:), pointer :: p => null()
     end type index_list_type
     type (index_list_type) :: xlist
   end subroutine sub2

   subroutine sub3
     integer, dimension(:), allocatable, save :: ufac
   end subroutine sub3

 end module mod_test

 program ptest
   use mod_test
   implicit none

   call init
   call init

rewind 4
call chk

 end program ptest
subroutine chk
logical Y
read(4,*) Y;if (.not.Y)print *,'error-1'
read(4,*) Y;if (     Y)print *,'error-2'
print *,'pass'
end
