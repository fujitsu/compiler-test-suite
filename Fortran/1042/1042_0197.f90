subroutine sub
  type st
     real(8),dimension(:),allocatable::a
  end type
  type (st) v1,v2
  allocate(v1%a(10))
  allocate(v2%a(20))
  v2%a=1
  v1=v2
  if (size(v1%a)/=20)write(6,*) "NG"
end
  call sub
  print *,'pass'
end

  
