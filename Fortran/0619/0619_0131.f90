  real,    allocatable :: a(:)
  logical, allocatable :: x(:)


  allocate (a(0), x(0))

  if (any ( (/ &
       minloc ( a ), &
       minloc ( a, mask=x ), &
       minloc ( (/ 1   /), mask=(/ .false. /) ), &
       minloc ( (/ 1.0 /), mask=(/ .false. /) ), &
       minloc ( (/ "A" /), mask=(/ .false. /) ), &
       maxloc ( (/ 1   /), mask=(/ .false. /) )  &
       /) /= 0)) then
     stop
  end if
print *,'pass'
end

