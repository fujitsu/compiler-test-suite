program main
real :: rr = 3.76
integer :: i = 5,res

associate(a=>int(rr)+i)
 if(a/=8) print*,101
 res=a*8+(2*int(rr))
end associate

if(res==70) print*,'pass'
end
