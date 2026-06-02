      module mod 
interface
module subroutine qmod_sub
end
end interface
       integer::m
       contains
       subroutine proc_1()
       m=1
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
        write(7,*) dummy_arg
       m=2
       end subroutine
       subroutine proc_3()
       m=3
       end subroutine
      end
      
submodule (mod) nsubmod
      type  :: ty_1                             ! 1)
       integer::x=1
       contains
        procedure,pass :: y1234 => s1
        procedure, nopass :: p1=>proc_1         ! 2) 8) 15)
        generic           :: operator(+) => y1234
        generic           :: gen_name => p1     ! 3) 4) 11)
      end type
      type, extends(ty_1) :: yy_2               ! 5) 6)
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
end
submodule (mod: nsubmod) msubmod
      type, extends(yy_2) :: wy_3               ! 5) 6)
      end type
      type, extends(wy_3) :: uy_3               ! 5) 6)
       contains
     procedure, pass :: x12345 => q12
        procedure, nopass :: p2=>proc_2         ! 7) 8) 
     generic           :: operator(+) => x12345
        generic           :: gen_name => p2     ! 9) 10) 11)
      end type
contains
 function  q12(c,a)
  class(uy_3),intent(in):: c
  complex  ,intent(in):: a
  logical::q12
  if (c%x/=1) print *,2001
  if (a/=(1,2)) print *,3001
  q12=.false.
 end function
end
submodule (mod: msubmod) ksubmod
      type, extends(uy_3) :: ey_4               ! 12) 13)
       contains
        procedure, pass :: y1234 => g123
        procedure, nopass :: p1=>proc_3         ! 14) 15)
      end type
contains
 function  g123(c,a)
  class(ey_4),intent(in):: c
  real     ,intent(in):: a
  logical::g123
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  g123=.false.
 end function
end
submodule (mod: ksubmod) qsubmod
      class(ty_1) ,allocatable:: var10                        ! 16)
      class(yy_2) ,allocatable:: var11                        ! 16)
      class(wy_3) ,allocatable:: var1                        ! 16)
      class(uy_3) ,allocatable:: var2                        ! 16)
      class(ey_4) ,allocatable:: var3                        ! 16)
interface
module subroutine wsubmod_sub(var1,var2,var3,var10,var11)
      class(ty_1) ,allocatable:: var10                        ! 16)
      class(yy_2) ,allocatable:: var11                        ! 16)
      class(wy_3) ,allocatable:: var1                        ! 16)
      class(uy_3) ,allocatable:: var2                        ! 16)
      class(ey_4) ,allocatable:: var3                        ! 16)
end
end interface
contains
module subroutine qmod_sub
allocate(var1,var2,var3,var10,var11)
call wsubmod_sub(var1,var2,var3,var10,var11)
end
end
submodule (mod: qsubmod) wsubmod
contains
module subroutine wsubmod_sub(var1,var2,var3,var10,var11)
      class(ty_1) ,allocatable:: var10                        ! 16)
      class(yy_2) ,allocatable:: var11                        ! 16)
      class(wy_3) ,allocatable:: var1                        ! 16)
      class(uy_3) ,allocatable:: var2                        ! 16)
      class(ey_4) ,allocatable:: var3                        ! 16)
complex ::x=(1,2)

 if (var2+x)print *,80011
 if (.not.var2%y1234(1.0))print *,80021
 if (var3+x)print *,8001
 if (var3%y1234(1.0))print *,8002
      call var11%gen_name()     
      if (m/=1) print *,10012,m
      call var10%gen_name()     
      if (m/=1) print *,10022,m
      call var1%gen_name()     
      if (m/=1) print *,10002,m
      call var2%gen_name(1.0)     
      if (m/=2) print *,10003,m
      call var3%gen_name(1.0)     
      if (m/=2) print *,10001
end
end
      
use mod
call qmod_sub
      print *,'sngg380o : pass'
      end 
