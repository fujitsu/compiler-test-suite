      module mod 
       contains
       subroutine proc_1()
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
        write(1,*) dummy_arg
       end subroutine
      end
      
      program main
      use mod
      type  :: ty_1                             ! 1)
       contains
        procedure, nopass :: proc_1             ! 2) 8) 15)
        generic           :: gen_name => proc_1 ! 3) 4) 11)
      end type
      type, extends(ty_1) :: ty_2               ! 5) 6)
       contains
        procedure, nopass :: proc_2             ! 7) 8) 
        generic           :: gen_name => proc_2 ! 9) 10) 11)
      end type
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        procedure, nopass :: proc_1             ! 14) 15)
      end type
      type(ty_3) :: var                         ! 16)
      call var%proc_2  (1.0)                    ! 17) 18)
      
      
      print *,'sngg769n : pass'
      end program
