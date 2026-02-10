subroutine sub(i)
implicit none
entry ent_value1(vi1)
integer,value::vi1
entry ent_value_st(st1)
type TAG
  integer*8 i,j
end type
type(TAG) st1
entry ent_i(i)
integer i
entry ent_r(r)
real r
entry ent_complex(c)
complex c
entry ent_character_a(ch)
character(*) ch
entry ent_character10(ch10)
character(10) ch10
entry ent_pointer(ptr)
real,pointer,dimension(:):: ptr
entry ent_allocatable(alloc)
real,allocatable,dimension(:)::alloc
entry ent
end subroutine sub
