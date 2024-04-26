subroutine s1(i3)
character(i3),pointer::p(:)

allocate(p(2),mold='aba'(:))             
end
call s1(3)
print *,'pass'
end

