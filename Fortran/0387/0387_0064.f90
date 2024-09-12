module mod01
 interface
  function func1() result(rst1) bind(c)
   integer :: rst1
  end function
  function func2() result(rst2) bind(c, name = 'bind_prc01')
   integer :: rst2
  end function
 end interface
 contains
  subroutine m01s01(i4)         bind(c)
   integer :: i4
   i4 = 4
  end subroutine
  subroutine m01s02(i4)         bind(c, name = 'bind_prc02')
   integer :: i4
   i4 = 8
  end subroutine
end module

use mod01

procedure(func1),  bind(c)                                :: out_func1
procedure(func2),  bind(c, name = 'bind_prc01A')          :: out_func2
procedure(func1),  bind(c),                       pointer :: func1_bindc_ptr1

procedure(m01s01), bind(c)                                :: out_sub1
procedure(m01s02), bind(c, name = 'bind_prc02A')          :: out_sub2
procedure(m01s01), bind(c),                       pointer :: sub1_bindc_ptr1

integer (kind = 4) :: i4a, i4b

func1_bindc_ptr1 => func1

if (func1().ne.func1_bindc_ptr1())  print *,'error'

func1_bindc_ptr1 => func2

if (func2().ne.func1_bindc_ptr1())  print *,'error'

func1_bindc_ptr1 => out_func1

if (out_func1().ne.func1_bindc_ptr1())  print *,'error'

func1_bindc_ptr1 => out_func2

if (out_func2().ne.func1_bindc_ptr1())  print *,'error'

func1_bindc_ptr1 => func1_bindc_ptr1

sub1_bindc_ptr1  => m01s01

call m01s01(i4a)
call sub1_bindc_ptr1(i4b)

if (i4a.ne.i4b)  print *,'error'

 sub1_bindc_ptr1  => m01s02

call m01s02(i4a)
call sub1_bindc_ptr1(i4b)

if (i4a.ne.i4b)  print *,'error'

sub1_bindc_ptr1  => out_sub1

call out_sub1(i4a)
call sub1_bindc_ptr1(i4b)

if (i4a.ne.i4b)  print *,'error'

sub1_bindc_ptr1  => out_sub2

call out_sub2(i4a)
call sub1_bindc_ptr1(i4b)

if (i4a.ne.i4b)  print *,'error'

sub1_bindc_ptr1  => sub1_bindc_ptr1

print *,'pass'

end

function   func1()     result(rst1) bind(c)
 integer :: rst1
 rst1 = 1
end function

function   func2()     result(rst2) bind(c, name = 'bind_prc01')
 integer :: rst2
 rst2 = 2
end function

function   out_func1() result(rst1) bind(c) 
 integer :: rst1
 rst1 = 3
end function

function   out_func2() result(rst2) bind(c, name = 'bind_prc01A')
 integer :: rst2
 rst2 = 4
end function

subroutine out_sub1(i4)             bind(c)
 integer :: i4
 i4 = 16
end subroutine

subroutine out_sub2(i4)             bind(c, name = 'bind_prc02A')
 integer :: i4
 i4 = 32
end subroutine
