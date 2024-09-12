interface 
    elemental subroutine sub(x)
    integer,intent(inout) ::  x
    end subroutine
    subroutine sub2(y)
    integer,intent(out) ::  y(10)
    end subroutine
    elemental subroutine sub1(z)
    integer,intent(out) ::  z
    end subroutine
end interface
 
procedure(sub):: ptr
procedure(sub2):: ptr2
 
interface gnr_1
procedure :: ptr,ptr2
end interface
 
integer :: arr(10)
call gnr_1(arr)  
if(arr(1) .EQ. 10)then
print*,'PASS'
else
print*,'FAIL'
endif
end
 
subroutine ptr2(y)
integer,intent(out) ::  y(10)
y = 10
end subroutine
subroutine ptr(x)
    integer,intent(inout) ::  x
x = 1
end subroutine
 
 

