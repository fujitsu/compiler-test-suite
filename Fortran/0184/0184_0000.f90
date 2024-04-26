subroutine sx( k1,k2,k3,k4,k5,k6)
integer :: a1(1,1)
data ((a1(k1,k2),k1=1,1),k2=1,1)/1/
integer:: a2(1)= [(( k3*k4 , k3=1,1),k4=1,1)] 
integer:: a3(1)
parameter(a3 = [(( k5*k6 , k5=1,1),k6=1,1)] )
call ss1
contains
subroutine ss1
implicit none
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
 if (k1/=2) print *,201
 if (k2/=2) print *,201
 if (k3/=2) print *,201
 if (k4/=2) print *,201
 if (k5/=2) print *,201
 if (k6/=2) print *,201
end subroutine
end
call sx(2,2,2,2,2,2)
print *,'pass'
end
