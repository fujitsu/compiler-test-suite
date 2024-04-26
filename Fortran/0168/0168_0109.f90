interface assignment(=)
subroutine sub(i,j)
real :: i
intent(inout) :: i
character :: j
intent(in) :: j
end subroutine 
end interface
complex:: a
real :: r
character :: cc
cc='a'
a%re=cc
if (a%re/=1.0) print *,101
r=cc
if (r/=1.0) print *,102
print *,'pass'
end
subroutine sub(i,j)
real :: i
intent(inout) :: i
character :: j
intent(in) :: j
i=0
if (j=='a') i=1.0
end
