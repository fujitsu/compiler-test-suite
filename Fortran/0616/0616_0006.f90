subroutine s1
integer a(5,5),b(5,5)
a(1:5:2,1:5:2)=0
call s11(a(1:5:2,1:5:2))
call s12(b(1:5:2,1:5:2))
contains
subroutine s11(a)
integer a(:,:)
write(4,*) a
end subroutine 
subroutine s12(b)
integer b(:,:)
b(2:2,:)=0
write(4,*) b(2,:)
b(:3,:)=0
end subroutine 
end
call s1
print *,'pass'
end
