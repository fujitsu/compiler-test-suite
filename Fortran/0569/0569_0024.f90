integer :: a(4)=[1,2,3,4]
call sub(a)
if(any((a) .ne. [6,6,6,6])) print*,101        
print*, "PASS"        
contains        
impure  elemental subroutine sub(x)
        integer,intent(out) :: x
        x = 6
end subroutine
end
