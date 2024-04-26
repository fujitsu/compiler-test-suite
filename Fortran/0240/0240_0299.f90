call test()
print *,'pass'
end
subroutine test()
integer,dimension(5,3)::array
array(2:4,3)=1
array(:,2)=1
end
