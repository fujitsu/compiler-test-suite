recursive subroutine s(i)
interface gen
  subroutine s1(j,pi)
   integer j
   integer,pointer::pi(:,:,:,:,:)
  end subroutine
  subroutine s2(k,pr)
   integer k
   character(*),pointer::pr(:,:,:,:,:)
  end subroutine
end interface
character*(i),pointer:: char_ptr(:,:,:,:,:)
   integer,pointer::int_ptr(:,:,:,:,:)
call gen(7,null(char_ptr))
call gen(7,null(char_ptr))
call gen(1,null(int_ptr))
end
call s(3)
print *,'pass'
end
  subroutine s1(j,pi)
   integer j
   integer,pointer::pi(:,:,:,:,:)
   if (j/=1)print *,'error-4'
   if (associated(pi))print *,'error-1'
   allocate(pi(2,2,2,2,2))
   pi=123
   if (any(pi/=123))print *,'error-2'
  end subroutine
  subroutine s2(k,pr)
   integer k
   character(*),pointer::pr(:,:,:,:,:)
   if (associated(pr))print *,'error-1'
   if (len(pr)/=3)print *,'error-3'
   allocate(pr(2,2,2,2,2))
   pr='123'
   if (any(pr/='123'))print *,'error-2'
   if (k/=7)print *,'error-4'
  end subroutine

 
