  real,    allocatable :: a(:)
  logical, allocatable :: x(:)


  allocate (a(0), x(0))

  write(1,*) minloc( a , x)

print *,'pass'
end

