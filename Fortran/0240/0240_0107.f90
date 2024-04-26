function equals (a, b)
implicit none
logical :: equals
real, intent(in) :: a, b
real :: eps
eps = abs(a) * epsilon(a)
if (eps == 0) then
eps = tiny (a)
end if
if (abs(a-b) > eps) then
equals = .false.
else
equals = .true.
end if
return
end function equals

interface
  logical function equals(a,b)
    real,intent(in) :: a,b
  end function
end interface
if (equals(1.0,1.5))  print *,'err'
print *,'pass'
end
