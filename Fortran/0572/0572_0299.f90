USE, INTRINSIC :: iso_c_binding
interface
     subroutine fun_char(x,tempcreated,address ,rank,ele_len,typ,attr, lower1 , ext1 , sm1 , lower2,ext2, sm2) BIND(C)
     import
     character(c_char) :: x(..)
     integer(c_long),VALUE :: address
        integer(c_int),VALUE :: tempcreated, rank, ele_len, typ, attr, lower1, ext1, sm1, lower2, ext2, sm2
     end subroutine
end interface
character(len=4)::aa(4)
call sub(aa)
contains 
subroutine sub(bb)
character(len=4)::bb(..)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=4))print*,202
if(any(shape(bb) /=4))print*,203
if(size(bb) /= 4)print*,204
if(rank(bb).ne.1)print*,"1001"
print*,"PASS"
end subroutine sub
end
