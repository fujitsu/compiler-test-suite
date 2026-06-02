      module mod 
integer::n
       contains
       subroutine proc_1()
n=1
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
n=2
        write(2,*) dummy_arg
       end subroutine
       subroutine proc_3()
n=3
       end subroutine
      end
      
module nod
      use mod
      type  :: ty_1                             ! 1)
       contains
        procedure, nopass :: p1=>proc_1         ! 2) 8) 15)
        generic           :: gen_name => p1     ! 3) 4) 11)
      end type
      type, extends(ty_1) :: ty_2               ! 5) 6)
       contains
        procedure, nopass :: p2=>proc_2         ! 7) 8) 
      end type
end
module kmod
use nod
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        procedure, nopass :: p1=>proc_3         ! 14) 15)
      end type
end
use kmod
      type(ty_3) :: var                         ! 16)
      call var%gen_name()                    ! 17) 18)
      if (n/=3) print *,20021
      
      
      print *,'sngg803n : pass'
      end 
