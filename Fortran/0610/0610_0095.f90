class(*),pointer :: ptr(:)
integer,target :: arr(5) = 1

i = 2
arr(2) = 10
arr(3) =  20

ptr => arr

SELECT TYPE(aa => ptr((fun(i) + 1)))
  class default 
  i = i+1
  SELECT TYPE(bb => aa)
  type is(integer)
   IF(bb .EQ. 20) THEN
    PRINT*,'pass'
   ELSE
    PRINT*,101
   END IF
  end select
end select

contains

function fun(dd)
implicit none
integer :: dd,fun
fun = dd
end function

end
