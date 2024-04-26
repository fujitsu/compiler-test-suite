interface
subroutine zee(a,b,c)
implicit none
real, intent(in), optional :: a,c
real, intent(in) :: b
end subroutine
end interface
call zee(b=3.0)
call zee(2.0,3.0)
call zee(b=3.0,c=8.5)
print *,'pass'
end
subroutine zee(a,b,c)
implicit none
real, intent(in), optional :: a,c
real, intent(in) :: b
real r
r=b
r=r
if (abs(b-3.0_4)>0.000001) print *,'err'
if (present(a)) then
  if (abs(a-2.0_4) > 0.00001) print *,'err'
endif
if (present(c)) then
  if (abs(c-8.5_4) > 0.00001) print *,'err'
endif
end subroutine
