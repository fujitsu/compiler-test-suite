block 
integer, allocatable :: ptr
allocate(ptr)
ptr=10
if(ptr == 10 ) then 
print*, 'pass'
else
print*, 'fail'
endif

endblock
end
