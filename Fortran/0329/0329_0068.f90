integer :: i,j,iiiiiiiiiiiiiiiiiiiiiiiiiiiiii
!$OMP THREADPRIVATE(k,iiiiiiiiiiiiiiiiiiiiiiiiiiiiii)
integer :: x(10)
integer :: y(10)
integer :: z(10)
!$OMP THREADPRIVATE(x,y,z)
print *,'pass'
end
