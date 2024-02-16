subroutine s1
integer,target,allocatable::a1(:),a2(:)
integer,pointer::p1(:)
allocate (a1(4),a2(5))
a1=[1,2,3,4]
a2=[-1,-2,-3,-4,-5]
p1=>a2
call move_alloc(to=a1,from=a2)
if (allocated(a2)) print *,101
if (any(p1/=[-1,-2,-3,-4,-5])) print *,102
if (any(a1/=[-1,-2,-3,-4,-5])) print *,104
if (associated(p1,a1)) then
   else
    print *,103
endif
end
call s1
print *,'pass'
end


