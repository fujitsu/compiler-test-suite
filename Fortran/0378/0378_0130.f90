recursive subroutine s1(i)
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
allocate(a(2),b)
a=1
b=1
i=i+1
if (i<3)call s1(i)
deallocate(a,b)
end
i=0
call s1(i)
print *,'pass'
end
