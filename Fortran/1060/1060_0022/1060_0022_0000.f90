  interface
     subroutine sub(i)
       integer i
     end subroutine sub
     subroutine ent_value1(vi1)
       integer,value::vi1
     end subroutine ent_value1
     subroutine ent_value_st(st1)
       type TAG
          sequence
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
     subroutine ent
     end subroutine ent
  end interface

  type TAG
     sequence
     integer*8 i,j
  end type TAG
  type(TAG)st
  integer i
  i = 1
  st%i = 2
  st%j = 3
  call sub(i)
  call ent_value_st(st)
  if (i.ne.2) stop '1-1'
  if (st%i.ne.3) stop '1-2'
  if (st%j.ne.4) stop '1-3'    
  print *,'PASS'

end program
