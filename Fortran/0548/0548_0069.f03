call s1
print *,'pass'
end
subroutine s1
type ty1
integer:: x=1,y=2
end type ty1
type, extends(ty1)::ty2
end type ty2
type(ty2),target::typ2
class(ty1),pointer::typ1
typ1=>typ2
name:select type(zzz=>typ1)
class default name
print *,'NG'
class is (ty1) name
if(storage_size(zzz)/=64_4) print *,'err1'
if(storage_size(typ1)/=64_4) print *,'err2'
if(storage_size(typ2)/=64_4) print *,'err3'
if(bge(zzz%x,zzz%y).neqv.bgt(zzz%x,zzz%y)) print *,'err4'
if(ble(zzz%x,zzz%y).neqv.blt(zzz%x,zzz%y)) print *,'err5'
if(shifta(zzz%x,zzz%y)/=shiftr(zzz%x,zzz%y)) print *,'err6'
if(shiftl(zzz%x,zzz%y)/=4_4) print *,'err7'
end select name
end
