subroutine s
common k1,k2,k3,k4
integer(2)::k1,k2,k3,k4
i=1
i=2
end subroutine
integer(2)::k1,k2,k3,k4
common k1,k2,k3,k4
k1=1;k2=2;k3=3;k4=4
call s
print *,'pass'
end
