subroutine s1
integer,allocatable::v(:)

allocate( v(3), source=1)
if (any(v/=1)) print *,v

deallocate(v)
allocate(v(3),source=[1,2,3])
if (any(v/=[1,2,3])) print *,v
end
call s1
print *,'pass'
end

