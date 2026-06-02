      module mod 
integer::n
       contains
       subroutine proc_1()
n=1
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
n=2
        write(14,*) dummy_arg
       end subroutine
       subroutine proc_3()
n=3
       end subroutine
       subroutine proc_4(k)
n=k
       end subroutine
       subroutine proc_5(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
n=5
        write(14,*) dummy_arg
       end subroutine
       subroutine proc_6(dummy_arg)             ! 18)
        real(8), intent(in) :: dummy_arg
n=6
        write(14,*) dummy_arg
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
        generic           :: gen_name => p2     ! 3) 4) 11)
      end type
end
module kmod
use nod
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        generic           ::gen_name=>p3
        generic           ::gen_name=>p4
        procedure, nopass :: p1=>proc_3         ! 14) 15)
        procedure, nopass :: p4=>proc_4         ! 14) 15)
        procedure, nopass :: p2=>proc_5         ! 14) 15)
        procedure, nopass :: p3=>proc_6         ! 14) 15)
      end type
end
use kmod
      type(ty_2) :: va2                        ! 16)
      type(ty_3) :: var                         ! 16)
      call va2%gen_name(1.0)                    ! 17) 18)
      if (n/=2) print *,200211
      call va2%gen_name()                    ! 17) 18)
      if (n/=1) print *,200232
      call va2%p2      (1.0)                    ! 17) 18)
      if (n/=2) print *,2002111
      call va2%p1      ()                    ! 17) 18)
      if (n/=1) print *,2002322

      call var%gen_name(1.0)                    ! 17) 18)
      if (n/=5) print *,20021
      call var%gen_name()                    ! 17) 18)
      if (n/=3) print *,20023
      call var%gen_name(1.0_8)                    ! 17) 18)
      if (n/=6) print *,20026
      call var%gen_name(4    )                    ! 17) 18)
      if (n/=4) print *,20027
      
      call var%p2      (1.0)                    ! 17) 18)
      if (n/=5) print *,20021
      call var%p1      ()                    ! 17) 18)
      if (n/=3) print *,20023
      call var%p3      (1.0_8)                    ! 17) 18)
      if (n/=6) print *,20026
      call var%p4      (4    )                    ! 17) 18)
      if (n/=4) print *,20027
      
      print *,'sngg814n : pass'
      end 
