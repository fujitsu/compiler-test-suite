subroutine s
 character(2)::a1(2,1,3)
parameter(k2=2)
a1=p1af()
if (len(a1)/=2)print *,302
if (any(a1/='cd'))print *,303
if (any(ubound(a1)/=[2,1,3]))print *,305
contains
 function p1af() result(r)
 character(2),allocatable::r(:,:,:)
 allocate(character(k2)::r(2,1,3))
 r='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
end
call s
print *,'pass'
end
