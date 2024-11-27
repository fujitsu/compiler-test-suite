type z
  complex(8),allocatable,dimension(:)::aa
end type
type (z)   a
complex(8),dimension(2)::b

  b=(/(1.0,2.0),(3.0,4.0)/)
  a=z(b)

  if (.not.allocated(a%aa)) write(6,*) "NG"
  if (any(abs(a%aa-(/(1.0,2.0),(3.0,4.0)/))>=1.0D-16)) write(6,*) "NG"
 print *,'pass'
end
