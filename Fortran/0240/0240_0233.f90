call test()
print *,'pass'
end
subroutine test()
integer :: i,j(10)
real :: n(5)
namelist /my_namelist/ i,j,n
if (1.eq.2)read(*,nml=my_namelist)
if (1.eq.2) write (*,nml=my_namelist)
end
