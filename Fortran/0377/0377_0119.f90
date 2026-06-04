interface len_func
 function func1(i) result(rst)
  integer (kind = 1) :: i
  integer :: rst
 end function
 function func2(i) result(rst)
  integer (kind = 2) :: i
  integer :: rst
 end function
 function func3(i) result(rst)
  integer (kind = 4) :: i
  integer :: rst
 end function
 function func4(i) result(rst)
  integer (kind = 8) :: i
  integer :: rst
 end function
 function func5(i) result(rst)
  real (kind = 4) :: i
  integer :: rst
 end function
 function func6(i) result(rst)
  real (kind = 8) :: i
  integer :: rst
 end function
 function func7(i) result(rst)
  real (kind = 16) :: i
  integer :: rst
 end function
 function func8(i) result(rst)
  complex (kind = 4) :: i
  integer :: rst
 end function
 function func9(i) result(rst)
  complex (kind = 8) :: i
  integer :: rst
 end function
 function func10(i) result(rst)
  complex (kind = 16) :: i
  integer :: rst
 end function
 function func11(i) result(rst)
  logical (kind = 1) :: i
  integer :: rst
 end function
 function func12(i) result(rst)
  logical (kind = 2) :: i
  integer :: rst
 end function
 function func13(i) result(rst)
  logical (kind = 4) :: i
  integer :: rst
 end function
 function func14(i) result(rst)
  logical (kind = 8) :: i
  integer :: rst
 end function
end interface

integer,parameter :: ipara_len01 = 1
integer,parameter :: ipara_len02 = 2
integer,parameter :: ipara_len03 = 3
integer,parameter :: ipara_len04 = 4
integer,parameter :: ipara_len05 = 5
integer,parameter :: ipara_len06 = 6
integer,parameter :: ipara_len07 = 7
integer,parameter :: ipara_len08 = 8
integer,parameter :: ipara_len09 = 9
integer,parameter :: ipara_len10 = 10
integer,parameter :: ipara_len11 = 11
integer,parameter :: ipara_len12 = 12
integer,parameter :: ipara_len13 = 13
integer,parameter :: ipara_len14 = 14

integer,parameter :: ipara_size = 5

integer(kind = 1),parameter  :: i1  = 1
integer(kind = 2),parameter  :: i2  = 2
integer(kind = 4),parameter  :: i4  = 4
integer(kind = 8),parameter  :: i8  = 8

real(kind = 4), parameter    :: r4  =  4.0
real(kind = 8), parameter    :: r8  =  8.0
real(kind = 16),parameter    :: r16 = 16.0

complex(kind = 4), parameter :: c4  = (4.0,  4.0)
complex(kind = 8), parameter :: c8  = (8.0,  8.0)
complex(kind = 16),parameter :: c16 = (16.0, 16.0)

logical(kind = 1),parameter  :: l1 = .true.
logical(kind = 2),parameter  :: l2 = .true.
logical(kind = 4),parameter  :: l4 = .true.
logical(kind = 8),parameter  :: l8 = .true.

character(ipara_len01) :: st1_1(ipara_size),  st1_2(ipara_size)
character(ipara_len02) :: st2_1(ipara_size),  st2_2(ipara_size)
character(ipara_len03) :: st3_1(ipara_size),  st3_2(ipara_size)
character(ipara_len04) :: st4_1(ipara_size),  st4_2(ipara_size)
character(ipara_len05) :: st5_1(ipara_size),  st5_2(ipara_size)
character(ipara_len06) :: st6_1(ipara_size),  st6_2(ipara_size)
character(ipara_len07) :: st7_1(ipara_size),  st7_2(ipara_size)
character(ipara_len08) :: st8_1(ipara_size),  st8_2(ipara_size)
character(ipara_len09) :: st9_1(ipara_size),  st9_2(ipara_size)
character(ipara_len10) :: st10_1(ipara_size), st10_2(ipara_size)
character(ipara_len11) :: st11_1(ipara_size), st11_2(ipara_size)
character(ipara_len12) :: st12_1(ipara_size), st12_2(ipara_size)
character(ipara_len13) :: st13_1(ipara_size), st13_2(ipara_size)
character(ipara_len14) :: st14_1(ipara_size), st14_2(ipara_size)

st1_1 = [character :: 'a', ('bc', 'cde', n = 1, 1), 'defg', 'efghi']

if (count(lge(st1_1, [character :: ('a', 'bc', 'cde', 'defg', 'efghi', n = 1, 1)])).ne.size(st1_1)) print *,'fail'
if (count(lle(st1_1, [('a', 'b', 'c', 'd', 'e', n = 1, 1)])).ne.size(st1_1)) print *,'fail'

st1_2 = [character(len_func(i1)) :: st1_1]

do i = 1, size(st1_2)
 if (st1_2(i).ne.st1_1(i)) print *,'fail'
end do

st2_1 = [character(ipara_len03) :: st1_2]

do i = 1, size(st1_2)
 if (trim(st2_1(i)).ne.st1_1(i)) print *,'fail'
end do

st2_2 = [character(len_func(i2)) :: st2_1]

st3_1 = [character(ipara_len03) :: st2_2]

do i = 1, size(st2_2)
 if (trim(st3_1(i)).ne.st2_1(i)) print *,'fail'
end do

st3_2 = [character(len_func(i4)) :: st3_1]

st4_1 = [character(ipara_len04) :: st3_2]

do i = 1, size(st2_1)
 if (trim(st4_1(i)).ne.st2_1(i)) print *,'fail'
end do

st4_2 = [character(len_func(i8)) :: st4_1]

st5_1 = [character(ipara_len05) :: st4_2]

do i = 1, size(st2_1)
 if (trim(st5_1(i)).ne.st2_1(i)) print *,'fail'
end do

st5_2 = [character(len_func(r4)) :: st5_1]

st6_1 = [character(ipara_len06) :: st5_2]

do i = 1, size(st2_1)
 if (trim(st6_1(i)).ne.st2_1(i)) print *,'fail'
end do

st6_2 = [character(len_func(r8)) :: st6_1]

st7_1 = [character(ipara_len07) :: st6_2]

do i = 1, size(st2_1)
 if (trim(st7_1(i)).ne.st2_1(i)) print *,'fail'
end do

st7_2 = [character(len_func(r16)) :: st7_1]

st8_1 = [character(ipara_len08) :: st7_2]

do i = 1, size(st2_1)
 if (trim(st8_1(i)).ne.st2_1(i)) print *,'fail'
end do

st8_2 = [character(len_func(c4)) :: st8_1]

st9_1 = [character(ipara_len09) :: st8_2]

do i = 1, size(st2_1)
 if (trim(st9_1(i)).ne.st2_1(i)) print *,'fail'
end do

st9_2 = [character(len_func(c8)) :: st9_1]

st10_1 = [character(ipara_len10) :: st9_2]

do i = 1, size(st2_1)
 if (trim(st10_1(i)).ne.st2_1(i)) print *,'fail'
end do

st10_2 = [character(len_func(c16)) :: st10_1]

st11_1 = [character(ipara_len11) :: st10_2]

do i = 1, size(st2_1)
 if (trim(st11_1(i)).ne.st2_1(i)) print *,'fail'
end do

st11_2 = [character(len_func(l1)) :: st11_1]

st12_1 = [character(ipara_len12) :: st11_2]

do i = 1, size(st2_1)
 if (trim(st12_1(i)).ne.st2_1(i)) print *,'fail'
end do

st12_2 = [character(len_func(l2)) :: st12_1]

st13_1 = [character(ipara_len13) :: st12_2]

do i = 1, size(st2_1)
 if (trim(st13_1(i)).ne.st2_1(i)) print *,'fail'
end do

st13_2 = [character(len_func(l4)) :: st13_1]

st14_1 = [character(ipara_len14) :: st13_2]

do i = 1, size(st2_1)
 if (trim(st14_1(i)).ne.st2_1(i)) print *,'fail'
end do

st14_2 = [character(len_func(l8)) :: st14_1]

print *,'pass'

end


function func1(i) result(rst)
 integer (kind = 1) :: i
 integer :: rst
 rst = 1
end function

function func2(i) result(rst)
 integer (kind = 2) :: i
 integer :: rst
 rst = 2
end function

function func3(i) result(rst)
 integer (kind = 4) :: i
 integer :: rst
 rst = 3
end function

function func4(i) result(rst)
 integer (kind = 8) :: i
 integer :: rst
 rst = 4
end function

function func5(i) result(rst)
 real (kind = 4) :: i
 integer :: rst
 rst = 5
end function

function func6(i) result(rst)
 real (kind = 8) :: i
 integer :: rst
 rst = 6
end function

function func7(i) result(rst)
 real (kind = 16) :: i
 integer :: rst
 rst = 7
end function

function func8(i) result(rst)
 complex (kind = 4) :: i
 integer :: rst
 rst = 8
end function

function func9(i) result(rst)
 complex (kind = 8) :: i
 integer :: rst
 rst = 9
end function

function func10(i) result(rst)
 complex (kind = 16) :: i
 integer :: rst
 rst = 10
end function

function func11(i) result(rst)
 logical (kind = 1) :: i
 integer :: rst
 rst = 11
end function

function func12(i) result(rst)
 logical (kind = 2) :: i
 integer :: rst
 rst = 12
end function

function func13(i) result(rst)
 logical (kind = 4) :: i
 integer :: rst
 rst = 13
end function

function func14(i) result(rst)
 logical (kind = 8) :: i
 integer :: rst
 rst = 14
end function
