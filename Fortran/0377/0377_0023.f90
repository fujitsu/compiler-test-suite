interface
 function func0() result(rst)
  character(0) :: rst
 end function
 function func1() result(rst)
  character(1) :: rst
 end function

 function ifunc0() result(rst)
  integer :: rst
 end function
 function ifunc1() result(rst)
  integer :: rst
 end function
end interface

call cont_sub1(0, 1)

 print *,'pass'

contains
 subroutine cont_sub1(dummy_i0, dummy_i1)
  type type1
   integer             :: type_i0
   integer             :: type_i1
  end type
  type (type1)         :: int_type
  integer              :: dummy_i0, dummy_i1
  integer              :: normal_i0, normal_i1, array_i0(3), array_i1(3)
  character (dummy_i0) :: s0(0)
  character (dummy_i1) :: s1(0)

  normal_i0 = dummy_i0
  normal_i1 = dummy_i1
  array_i0  = normal_i0
  array_i1  = normal_i1
  int_type  = type1(normal_i0, normal_i1)
  s0 = [character (dummy_i0) :: ]
  s1 = [character (dummy_i1) :: ]

  if (size(s0).ne.size([character (dummy_i0)             :: ])) print *, 'line 44 err'
  if (size(s1).ne.size([character (dummy_i1)             :: ])) print *, 'line 45 err'
  if (size(s0).ne.size([character (normal_i0)            :: ])) print *, 'line 46 err'
  if (size(s1).ne.size([character (normal_i1)            :: ])) print *, 'line 47 err'
  if (size(s0).ne.size([character (array_i0(1))          :: ])) print *, 'line 48 err'
  if (size(s1).ne.size([character (array_i1(1))          :: ])) print *, 'line 49 err'
  if (size(s0).ne.size([character (int_type%type_i0)     :: ])) print *, 'line 50 err'
  if (size(s1).ne.size([character (int_type%type_i1)     :: ])) print *, 'line 51 err'
  if (size(s0).ne.size([character (ifunc0())             :: ])) print *, 'line 52 err'
  if (size(s1).ne.size([character (ifunc1())             :: ])) print *, 'line 53 err'
  if (size(s0).ne.size([character (len(func0()))         :: ])) print *, 'line 54 err'
  if (size(s1).ne.size([character (len(func1()))         :: ])) print *, 'line 55 err'
  if (size(s0).ne.size([character (len(s0))              :: ])) print *, 'line 56 err'
  if (size(s1).ne.size([character (len(s1))              :: ])) print *, 'line 57 err'
  if (size(s0).ne.size([character (normal_i0 + dummy_i0) :: ])) print *, 'line 58 err'
  if (size(s1).ne.size([character (normal_i0 + dummy_i1) :: ])) print *, 'line 59 err'
  if (size(s1).ne.size([character (normal_i1 + dummy_i0) :: ])) print *, 'line 60 err'
  if (size(s0).ne.size([character (normal_i0 - dummy_i0) :: ])) print *, 'line 61 err'
  if (size(s0).ne.size([character (normal_i1 - dummy_i1) :: ])) print *, 'line 62 err'
  if (size(s1).ne.size([character (normal_i1 * dummy_i1) :: ])) print *, 'line 63 err'
  if (size(s1).ne.size([character (normal_i1 / dummy_i1) :: ])) print *, 'line 64 err'
 end subroutine

end

function func0() result(rst)
 character(0) :: rst
 rst = ''
end function

function func1() result(rst)
 character(1) :: rst
 rst = '1'
end function

function ifunc0() result(rst)
 integer :: rst
 rst = 0
end function

function ifunc1() result(rst)
 integer :: rst
 rst = 1
end function
