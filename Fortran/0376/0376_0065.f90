subroutine s
interface gen
  subroutine s1(j,pi)
   integer j
   integer,pointer::pi
  end subroutine
  subroutine s2(k,pr)
   integer k
   real,pointer::pr
  end subroutine
end interface
real,pointer:: real_ptr
call gen(7,null(real_ptr))
end
call s
print *,'pass'
end
  subroutine s1(j,pi)
   integer j
   integer,pointer::pi
   print *,'error'
  end subroutine
  subroutine s2(k,pr)
   integer k
   real,pointer::pr
   if (associated(pr))print *,'error-1'
   allocate(pr)
   pr=1
   if (real(pr-1)>0.01)print *,'error-2'
   if (k/=7)print *,'error-3'
  end subroutine

 
