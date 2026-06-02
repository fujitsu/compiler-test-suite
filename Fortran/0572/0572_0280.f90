USE, INTRINSIC :: iso_c_binding
interface
     subroutine fun_int(x,tempcreated,address ,rank,ele_len,typ,attr, lower1 , ext1 , sm1 , lower2,ext2, sm2) BIND(C)
     import
     integer(c_int) :: x(..)
     integer(c_long),VALUE :: address
        integer(c_int),VALUE :: tempcreated, rank, ele_len, typ, attr, lower1, ext1, sm1, lower2, ext2, sm2
     end subroutine
end interface
type ty
integer(kind=4) :: aa(4,4)
end type ty
type(ty) :: obj
obj%aa = 3
call sub(obj%aa)
contains 
subroutine sub(bb)
integer(kind=4)::bb(..)
integer::s1(2)
        s1 = shape(bb)
        if(lbound(bb,1) /=1 ) print*,'403'
        if(ubound(bb,1) /=4 ) print*,'404'
        if(lbound(bb,2) /=1 ) print*,'405'
        if(ubound(bb,2) /=4 ) print*,'406'
        if(s1(1) /= 4 ) print*,'407'
        if(s1(2) /= 4 ) print*,'408'
        if(size(bb) /= 16)print*, 409
print*,"PASS"
end subroutine sub
end
