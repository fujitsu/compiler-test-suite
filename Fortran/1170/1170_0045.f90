      module mod 
interface
module subroutine kmod_sub
end
end interface
       integer::m
type ty0
end type
       contains
       subroutine proc_1()
       m=1
       end subroutine
       subroutine proc_2(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
        write(11,*) dummy_arg
       m=2
       end subroutine
       subroutine proc_3()
       m=3
       end subroutine
      end
submodule (mod)nmod
      type,extends(ty0)  :: ty_1                             ! 1)
       integer::x=1
       contains
            procedure,pass :: y1234 => s1
        procedure, nopass :: p1=>proc_1         ! 2) 8) 15)
     generic           :: operator(+) => y1234
        generic           :: gen_name => p1     ! 3) 4) 11)
      end type
      type, extends(ty_1) :: qy_2               ! 5) 6)
      end type
      type, extends(qy_2) :: ty_2               ! 5) 6)
       contains
     procedure, pass :: x12345 => q12
        procedure, nopass :: p2=>proc_2         ! 7) 8) 
     generic           :: operator(+) => x12345
        generic           :: gen_name => p2     ! 9) 10) 11)
      end type
      type,extends(ty_2)  :: ry_1                             ! 1)
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
submodule (mod:nmod)mmod
      type, extends(ry_1) :: ty_3               ! 12) 13)
       contains
        procedure, nopass :: p1=>proc_3         ! 14) 15)
        procedure, pass :: y1234 => g123
      end type
interface
module subroutine emod_sub(var1,var2,var3)
      class(ty_1) ,pointer:: var1                        ! 16)
      class(ty_2) ,pointer:: var2                        ! 16)
      class(ty_3) ,pointer:: var3                        ! 16)
end
end interface
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
submodule (mod:mmod)kmod
      class(ty_1) ,pointer:: var1                        ! 16)
      class(ty_2) ,pointer:: var2                        ! 16)
      class(ty_3) ,pointer:: var3                        ! 16)
contains
module procedure  kmod_sub
call              emod_sub(var1,var2,var3)
end
end
submodule (mod:kmod)emod
contains
module procedure  emod_sub
allocate(var1,var2,var3)

      call var1%gen_name(   )                    ! 17) 18)
      if (m/=1) print *,10011
      !call var1%gen_name(1.0)                    ! 17) 18)
      !if (m/=2) print *,10021
      call var2%gen_name(   )                    ! 17) 18)
      if (m/=1) print *,10031
      call var2%gen_name(1.0)                    ! 17) 18)
      if (m/=2) print *,10041
      call var3%gen_name(   )                    ! 17) 18)
      if (m/=3) print *,10051
      call var3%gen_name(1.0)                    ! 17) 18)
      if (m/=2) print *,10061

      call var1%p1      (   )                    ! 17) 18)
      if (m/=1) print *,10011
      !call var1%p2      (1.0)                    ! 17) 18)
      !if (m/=2) print *,10021
      call var2%p1      (   )                    ! 17) 18)
      if (m/=1) print *,10031
      call var2%p2      (1.0)                    ! 17) 18)
      if (m/=2) print *,10041
      call var3%p1      (   )                    ! 17) 18)
      if (m/=3) print *,10051
      call var3%p2      (1.0)                    ! 17) 18)
      if (m/=2) print *,10061

allocate(ty_3::var1,var2,var3)
  if ( var1   + 1.)print *,801
  if ( var2   + (1,1))print *,802
allocate(var1,var2)
  if ( .not.(var1   + 1.))print *,811
  if ( var2   + (1,1))print *,812
allocate(var3)
  if ( var3   + 1.)print *,821
  if ( var3   + (1,1))print *,822
      
allocate(ty_3::var1,var2,var3)
  if ( .not.s1(var1   , 1.))print *,8011
  if ( q12(var2   , (1,1)))print *,8021
allocate(var1,var2)
  if ( .not.s1(var1   , 1.))print *,8112
  if ( q12(var2   , (1,1)))print *,8123
allocate(var3)
  if ( g123(var3   , 1.))print *,8214
  if ( q12(var3   , (1,1)))print *,822
end
end
use mod
call kmod_sub
      print *,'sngg384o : pass'
      end 
