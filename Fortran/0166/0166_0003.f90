interface assignment(=)
subroutine sub(i,j)
real :: i
intent(inout) :: i
character :: j
intent(in) :: j
end subroutine 
end interface

complex:: a
character :: cc
cc='a'
a%re=cc
if (a%re.ne.1.0) print *,'err'
print *,'pass'
end
subroutine sub(i,j)
real :: i
intent(inout) :: i
character :: j
intent(in) :: j
i=1.0
end subroutine 
