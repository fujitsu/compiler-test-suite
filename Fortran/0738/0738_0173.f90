type z
  complex(8),allocatable,dimension(:)::aa
end type
type (z)  ,allocatable,dimension(:)::a
complex(8),allocatable,dimension(:)::b

  allocate(a(2))
  allocate(b(2))

  b=(/(1.0,2.0),(3.0,4.0)/)
  a(1)=z(b+(1.0,1.0))
  a(2)=z(b+(2.0,2.0))

  deallocate(b)
  if (.not.allocated(a(1)%aa)) write(6,*) "NG"
  if (.not.allocated(a(2)%aa)) write(6,*) "NG"
  if (any(abs(a(1)%aa-(/(2.0,3.0),(4.0,5.0)/))>=1.0D-16)) write(6,*) "NG"
  if (any(abs(a(2)%aa-(/(3.0,4.0),(5.0,6.0)/))>=1.0D-16)) write(6,*) "NG"
  deallocate(a(1)%aa,a(2)%aa) 
  deallocate(a)
 print *,'pass'
end
