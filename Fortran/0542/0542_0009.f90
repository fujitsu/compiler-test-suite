  type:: x
    integer(8)::x1
  end type
   class (x),pointer   ::a
   class (x),pointer   ::b
   logical::f
   allocate(a)
   b=>a
       f=associated(a, b)
if (.not.f) print *,10003
print *,'pass'
end
