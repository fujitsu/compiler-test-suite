      module mod 
       integer::m
       contains
       subroutine proc_1()
       m=1
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
        write(1,*) dummy_arg
       m=2
       end subroutine
       subroutine proc_3()
       m=3
       end subroutine
      end
      
module nmod
      use mod
      type  :: ty_1                             ! 1)
       integer::x=1
       contains
            procedure,pass :: y1234 => s1
        procedure, nopass :: p1=>proc_1         ! 2) 8) 15)
     generic           :: operator(+) => y1234
        generic           :: gen_name => p1     ! 3) 4) 11)
      end type
      type, extends(ty_1) :: ty_2               ! 5) 6)
       contains
     procedure, pass :: x12345 => q12
        procedure, nopass :: p2=>proc_2         ! 7) 8) 
     generic           :: operator(+) => x12345
        generic           :: gen_name => p2     ! 9) 10) 11)
      end type
contains
 function   s1(c,a)
  class(ty_1),intent(in):: c
  real     ,intent(in):: a
  logical::s1
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  s1=.true.
 end function
 function  q12(c,a)
  class(ty_2),intent(in):: c
  complex  ,intent(in):: a
  logical::q12
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  q12=.false.
 end function
end
module kmod
use nmod
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        procedure, pass :: y1234 => g123
        procedure, nopass :: p1=>proc_3         ! 14) 15)
      end type
contains
 function  g123(c,a)
  class(ty_3),intent(in):: c
  real     ,intent(in):: a
  logical::g123
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  g123=.false.
 end function
end
use kmod
      class(ty_1) ,allocatable:: var1                        ! 16)
      class(ty_2) ,allocatable:: var2                        ! 16)
      class(ty_3) ,allocatable:: var3                        ! 16)
allocate(var1,var2,var3)

      call var3%gen_name(1.0)                    ! 17) 18)
      if (m/=2) print *,10001
      
      
      print *,'sngg822n : pass'
      end program
