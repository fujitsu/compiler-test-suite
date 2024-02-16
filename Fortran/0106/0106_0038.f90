module m1
integer ::k=1
complex(8),allocatable,dimension(:,:)::x0
contains
 function wf0() result(r)
   complex(8),allocatable::r(:,:)
   allocate(r(2,1))
 end function
end
print *, 'PASS'
end
