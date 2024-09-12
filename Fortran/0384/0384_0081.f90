call test01()
print *,'pass'
end

subroutine test01()
real ,parameter :: i=-0.0
complex(kind=4 ),parameter  :: c01  = (-0.0,i)
complex(kind=4 ),parameter  :: c02  = (-0.0,-0.0)
end
