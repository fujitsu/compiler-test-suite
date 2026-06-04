      module mod 
        integer::n
       contains
       subroutine proc_1()
        n=1
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
        write(1,*) dummy_arg
        n=2
       end subroutine
       subroutine proc_3()
        n=3
       end subroutine
      end
      
      program main
      use mod
      type  :: ty_1                             ! 1)
       contains
        procedure, nopass :: p1=>proc_1         ! 2) 8) 15)
      !!!!!  generic           :: gen_name => p1     ! 3) 4) 11)
      end type
      type, extends(ty_1) :: ty_2               ! 5) 6)
       contains
        procedure, nopass :: p2=>proc_2         ! 7) 8) 
        generic           :: gen_name => p2     ! 9) 10) 11)
      end type
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        procedure, nopass :: p1=>proc_3         ! 14) 15)
      end type
      type(ty_1) :: var1                         ! 16)
      type(ty_2) :: var2                         ! 16)
      type(ty_3) :: var3                         ! 16)
      !call var1%gen_name()                    ! 17) 18)
      !if (n/=1) print *,1001
      call var1%p1      ()                    ! 17) 18)
      if (n/=1) print *,1002
      !call var2%gen_name(   )                    ! 17) 18)
      !if (n/=1) print *,1003
      call var2%gen_name(1.0)                    ! 17) 18)
      if (n/=2) print *,1004
      call var2%p1      (   )                    ! 17) 18)
      if (n/=1) print *,1005
      call var2%p2      (1.0)                    ! 17) 18)
      if (n/=2) print *,1006
      !call var3%gen_name(   )                    ! 17) 18)
      !if (n/=3) print *,1007
      call var3%gen_name(1.0)                    ! 17) 18)
      if (n/=2) print *,1008
      call var3%p1      (   )                    ! 17) 18)
      if (n/=3) print *,1009
      call var3%p2      (1.0)                    ! 17) 18)
      if (n/=2) print *,1010
      
      
      print *,'sngg778n : pass'
      end program
