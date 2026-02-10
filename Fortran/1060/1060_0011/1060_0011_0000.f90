  interface
     subroutine sub(i)
       integer i
     end subroutine sub
     subroutine ent_value1(vi1)
       integer,value::vi1
     end subroutine ent_value1
     subroutine ent_value_st(st1)
       type TAG
          integer*8 i,j
       end type TAG
       type(TAG) st1
     end subroutine ent_value_st
     subroutine ent_i(i)
       integer i
     end subroutine ent_i
     subroutine ent_r(r)
       real r
     end subroutine ent_r
     subroutine ent_complex(c)
       complex c
     end subroutine ent_complex
     subroutine ent_character_a(ch)
       character(*) ch
     end subroutine ent_character_a
     subroutine ent_character10(ch10)
       character(10) ch10
     end subroutine ent_character10
     subroutine ent_pointer(ptr)
       real,pointer,dimension(:):: ptr
     end subroutine ent_pointer
     subroutine ent_allocatable(alloc)
       real,allocatable,dimension(:)::alloc
     end subroutine ent_allocatable
     subroutine ent_array(array)
       real::array(:)
     end subroutine ent_array
     subroutine ent
     end subroutine ent
  end interface

  integer i
  real a(10)
  i = 1
  call sub(i)
  a = 2
  call ent_array(a)
  if (i.ne.2) stop '1-1'
  if (all(a==3)) then
  else
     stop '1-2'
  endif
  print *,'PASS'

end program
