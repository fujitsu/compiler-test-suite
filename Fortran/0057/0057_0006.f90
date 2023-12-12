module m   
    contains
impure  elemental function fun(i,j)
    integer i,j
   entry fune(i,j)
    intent(in) :: i
    intent(in) :: j
    fune=i**j
    fun=fune
   return 
    end function
impure  elemental subroutine sub(i,j)
    integer i,j
   entry sube(i,j)
    intent (out):: i
    intent(in) :: j
     value j
    i=j
   i=i+j
   return 
    end subroutine
end module

use m
integer :: a1=6,a2=2
if(fune(a1,a2).ne. 36)print*,"101"
call sube(a1,a2)
if(a1 .ne. 4)print*,"102",a1
print*,"Pass"
end


