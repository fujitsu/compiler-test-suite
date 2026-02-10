module tag_mod
  type TAG
     sequence
     integer*8 i,j
  end type TAG
end 
module mod
  interface
     subroutine sub_allocatable(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_allocatable
     subroutine sub_array(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_array
     subroutine sub_character10(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_character10
     subroutine sub_character_a(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_character_a
     subroutine sub_character_bindc(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_character_bindc
     subroutine sub_complex(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_complex
     subroutine sub_i(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_i
     subroutine sub_pointer(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_pointer
     subroutine sub_r(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_r
     subroutine sub_value1(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_value1
     subroutine sub_character_value(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_character_value
     subroutine sub_value_st(arg)
       implicit none
       integer arg(:,:)
     end subroutine sub_value_st
  end interface
  interface
     subroutine sub(i)
       integer i
     end subroutine sub
     subroutine ent_value1(vi1, ch3)
       integer,value::vi1
       character*(*) ch3
     end subroutine ent_value1
     subroutine ent_value_st(st1, ch3)
       use tag_mod
       type(TAG) ,value::st1
       character*(*) ch3
     end subroutine ent_value_st
     subroutine ent_i(i, ch3)
       integer i
       character*(*) ch3
     end subroutine ent_i
     subroutine ent_r(r, ch3)
       real r
       character*(*) ch3
     end subroutine ent_r
     subroutine ent_complex(c, ch3)
       complex c
       character*(*) ch3
     end subroutine ent_complex
     subroutine ent_character_a(ch, ch3)
       character(*) ch
       character*(*) ch3
     end subroutine ent_character_a
     subroutine ent_character10(ch10, ch3)
       character(10) ch10
       character*(*) ch3
     end subroutine ent_character10
     subroutine ent_character_bindc(chc, ch3) bind(c)
       character chc
       character ch3
     end subroutine ent_character_bindc
     subroutine ent_pointer(ptr, ch3)
       real,pointer,dimension(:):: ptr
       character*(*) ch3
     end subroutine ent_pointer
     subroutine ent_allocatable(alloc, ch3)
       real,allocatable,dimension(:)::alloc
       character*(*) ch3
     end subroutine ent_allocatable
     subroutine ent_array(array, ch3)
       real::array(:)
       character*(*) ch3
     end subroutine ent_array
     subroutine ent_character_value(chv, ch3)
       character*(4),value::chv
       character*(*) ch3
     end subroutine ent_character_value
     subroutine ent
     end subroutine ent
  end interface
end 

subroutine test_allocatable
  use mod
  implicit none
  integer i(3,4)
  real,allocatable :: a(:)
  i = 1
  call sub_allocatable(i)
  allocate(a(10))
  a = 2
  call ent_allocatable(a, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (all(a==3)) then
  else
     stop '1-2'
  endif
end

subroutine test_array
  use mod
  implicit none
  integer i(3,4)
  real a(10)
  i = 1
  call sub_array(i)
  a = 2
  call ent_array(a, 'XYZ')
  if (any(i.ne.2)) stop '2-1'
  if (all(a==3)) then
  else
     stop '2-2'
  endif
end

subroutine test_character10
  use mod
  implicit none
  integer i(3,4)
  character*10 ch10
  i = 1
  call sub_character10(i)
  call ent_character10(ch10, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (ch10(1:4).ne.'PASS') stop '1-2'
end

subroutine test_character_a
  use mod
  implicit none
  integer i(3,4)
  character*10 ch10
  i = 1
  call sub_character_a(i)
  call ent_character_a(ch10, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (ch10(1:4).ne.'PASS') stop '1-2'
end

subroutine test_character_bindc
  use mod
  implicit none
  integer i(3,4)
  character*10 ch10
  i = 1
  call sub_character_bindc(i)
  call ent_character_bindc(ch10, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (ch10(1:1).ne.'P') stop '1-2'
end

subroutine test_complex
  use mod
  implicit none
  integer i(3,4)
  complex c
  i = 1
  call sub_complex(i)
  c = (2., 3.)
  call ent_complex(c, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (c.ne.(5. , 7.)) stop '1-2'
end

subroutine test_i
  use mod
  implicit none
  integer i(3,4),j
  i = 1
  j = 2
  call sub_i(i)
  call ent_i(j, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (j.ne.3) stop '1-2'

end

subroutine test_pointer
  use mod
  implicit none
  integer i(3,4)
  real,pointer :: a(:)
  i = 1
  call sub_pointer(i)
  allocate(a(10))
  a = 2
  call ent_pointer(a, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (all(a==3)) then
  else
     stop '1-2'
  endif
end

subroutine test_r
  use mod
  implicit none
  integer i(3,4)
  real r
  i = 1
  r = 2
  call sub_r(i)
  call ent_r(r, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
  if (r.ne.3) stop '1-2'
end

subroutine test_value1
  use mod
  implicit none
  integer i(3,4)
  i = 1
  call ent_value1(1, 'XYZ')
  call sub_value1(i)
  if (any(i .ne. 2)) then 
    print *,i
    stop '1-1'
  endif
end

subroutine test_character_value
  use mod
  implicit none
  integer i(3,4)
  i = 1
  call sub_character_value(i)
  call ent_character_value('PASS\0', 'XYZ')
  if (any(i.ne.2)) stop '1-1'
end

subroutine test_value_st
  use tag_mod
  use mod
  type(TAG)st
  integer i(3,4)
  i = 1
  st%i = 2
  st%j = 3
  call sub_value_st(i)
  call ent_value_st(st, 'XYZ')
  if (any(i.ne.2)) stop '1-1'
end

call test_allocatable
call test_array
call test_character10
call test_character_a
call test_character_bindc
call test_complex
call test_i
call test_pointer
call test_r
call test_value1
call test_character_value
call test_value_st

  print *,'PASS'

end
