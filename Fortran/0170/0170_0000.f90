subroutine s1
integer:: a(2,3)=reshape([1,2,3,4,5,6],[2,3])
integer:: b(6)
b=[ a ]
if (any(b/=[1,2,3,4,5,6])) print *,101
if (any([a]/=[1,2,3,4,5,6])) print *,103
if (size([a])/=6) print *,103
end
call s1
print *,'pass'
end

