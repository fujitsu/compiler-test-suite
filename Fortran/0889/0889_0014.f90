subroutine s1(i4,i3)
character(i4),pointer::p4(:)
character(i3),pointer::p3(:)
character(3) :: c(3)

allocate(p4,p3(2),mold=c)                
end
call s1(4,3)
print *,' pass'
end

