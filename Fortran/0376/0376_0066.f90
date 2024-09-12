recursive subroutine s
interface gen
  subroutine s1(j,pi)
   integer j
   integer,pointer::pi
  end subroutine
  subroutine s2(k,pr)
   integer k
   character(*),pointer::pr
  end subroutine
end interface
character*3,pointer:: char_ptr
integer,pointer::int_ptr
call gen(7,null(char_ptr))
call gen(7,null(char_ptr))
call gen(1,null(int_ptr))
end
call s
print *,'pass'
end
  subroutine s1(j,pi)
   integer j
   integer,pointer::pi
   if (j/=1)print *,'error-4'
   if (associated(pi))print *,'error-1'
   allocate(pi)
   pi=123
   if (pi/=123)print *,'error-2'
  end subroutine
  subroutine s2(k,pr)
   integer k
   character(*),pointer::pr
   if (associated(pr))print *,'error-1'
   if (len(pr)/=3)print *,'error-3'
   allocate(pr)
   pr='123'
   if (pr/='123')print *,'error-2'
   if (k/=7)print *,'error-4'
  end subroutine

 
