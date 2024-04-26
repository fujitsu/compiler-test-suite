subroutine s1
real,allocatable,dimension(:,:)::POP,P4
P4 = TRANSPOSE( POP((/1,2,3/),1:2) )
end
print *,'pass'
end
