subroutine s1
 real,allocatable:: x(:,:,:)

allocate( x(2:3,2:3, 2:3) )
x(:,:,:) =1
end
call s1
print *,'pass'
end
