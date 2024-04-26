interface
pure subroutine zee ( var1 , var2 )
integer ,intent(in):: var1,var2
end subroutine zee
end interface
integer :: v1,v2
v1=1
v2=2
call zee(v1,v2)
print *,'pass'
end
pure subroutine zee ( var1 , var2 )
integer ,intent(in):: var1,var2
integer :: i
i=1
i=i+var1+var2
end subroutine zee
