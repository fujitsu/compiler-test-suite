subroutine s(k)
integer,allocatable::xs
integer,allocatable::xa(:)
if (allocated(xs))print *,101,k
allocate(xs)
if (k==1)then
allocate(xa(2))
else
if (.not.allocated(xa))allocate(xa(2))
endif
xs=1
xa=2
end
call s(1)
call s(2)
print *,'pass'
end

