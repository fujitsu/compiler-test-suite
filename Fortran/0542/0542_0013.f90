  type:: x
    integer(8)::x1
  end type
   class (x),pointer   ::a
   class (x),pointer   ::b
   type  (x),pointer   ::aa,bb
   logical::f
   allocate(a)
   b=>a
   bb=>b
   aa=>a
       f=associated(aa, b)
if (.not.f) print *,10003
print *,'pass'
end
