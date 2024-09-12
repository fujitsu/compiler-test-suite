module m1
contains
subroutine s(dmy1,dmy2)
class(*),value :: dmy1(:)
class(*),value :: dmy2(:)

select type (dmy1)
type is(integer)
 if(size(dmy1) /= 3) print*, 101
 if(dmy1(1) /= 11) print*, 102
 if(dmy1(2) /= 12) print*, 103
 if(dmy1(3) /= 13) print*, 104

class default
 print*, 911
end select

select type (dmy2)
type is(character(len=*))
 if(size(dmy2) /= 4) print*, 201
 if(len(dmy2) /= 4) print*, 201
 if(dmy2(1) /= "2222") print*, 202
 if(dmy2(2) /= "3333") print*, 203
 if(dmy2(3) /= "4444") print*, 204
 if(dmy2(4) /= "5555") print*, 205
class default
 print*, 911
end select
end subroutine
end
    
program main
use m1
call s([11, 12, 13], ["2222","3333", "4444", "5555"])
print*, "PASS"
end
