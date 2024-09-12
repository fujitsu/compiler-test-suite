interface
 function func1() result(rst1)
  integer              :: rst1
 end function
 function func2() result(rst2)
  integer, pointer     :: rst2
 end function
 function func3() result(rst3)
  integer, allocatable :: rst3
 end function
end interface

procedure(func1) :: out_func1
procedure(func2) :: out_func2
procedure(func3) :: out_func3

procedure(func1), pointer :: pf1p
procedure(func2), pointer :: pf2p
procedure(func3), pointer :: pf3p

call csub1(func1)
call csub1(out_func1)
call csub1(pf1p)

call csub2(func2)
call csub2(out_func2)
call csub2(pf2p)

call csub3(func3)
call csub3(out_func3)
call csub3(pf3p)

call csub4(func1)
call csub4(out_func1)
call csub4(pf1p)

call csub5(func2)
call csub5(out_func2)
call csub5(pf2p)

call csub6(func3)
call csub6(out_func3)
call csub6(pf3p)

call csub7(pf1p)
call csub8(pf2p)
call csub9(pf3p)

print *,'pass'

contains
 subroutine csub1(func1)
  interface
   function func1() result(rst1)
    integer              :: rst1
   end function
  end interface
 end subroutine

 subroutine csub2(func2)
  interface
   function func2() result(rst2)
    integer, pointer     :: rst2
   end function
  end interface
 end subroutine

 subroutine csub3(func3)
  interface
   function func3() result(rst3)
    integer, allocatable :: rst3
   end function
  end interface
 end subroutine

 subroutine csub4(out_func1)
  interface
   function func1() result(rst1)
    integer              :: rst1
   end function
  end interface
  procedure(func1) :: out_func1
 end subroutine

 subroutine csub5(out_func2)
  interface
   function func2() result(rst2)
    integer, pointer     :: rst2
   end function
  end interface
  procedure(func2) :: out_func2
 end subroutine

 subroutine csub6(out_func3)
  interface
   function func3() result(rst3)
    integer, allocatable :: rst3
   end function
  end interface
  procedure(func3) :: out_func3
 end subroutine

 subroutine csub7(pf1p)
  interface
   function func1() result(rst1)
    integer              :: rst1
   end function
  end interface
  procedure(func1), pointer :: pf1p
 end subroutine

 subroutine csub8(pf2p)
  interface
   function func2() result(rst2)
    integer, pointer     :: rst2
   end function
  end interface
  procedure(func2), pointer :: pf2p
 end subroutine

 subroutine csub9(pf3p)
  interface
   function func3() result(rst3)
    integer, allocatable :: rst3
   end function
  end interface
  procedure(func3), pointer :: pf3p
 end subroutine

end

function func1() result(rst1)
 integer              :: rst1
 rst1 = 1
end function

function func2() result(rst2)
 integer, pointer     :: rst2
 rst2 => null()
end function

function func3() result(rst3)
 integer, allocatable :: rst3
 allocate(rst3)
end function

function out_func1() result(rst1)
 integer              :: rst1
 rst1 = 1
end function

function out_func2() result(rst2)
 integer, pointer     :: rst2
 rst2 => null()
end function

function out_func3() result(rst3)
 integer, allocatable :: rst3
 allocate(rst3)
end function
