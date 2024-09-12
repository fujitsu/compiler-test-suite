call s1
call s2
print *,'pass'
end
subroutine s1
type aa
integer(1)::x1
end type
type(aa)::typ1
type bb
integer(2)::x2
end type
type(bb)::typ2(2)
type cc
integer(4)::x12
integer(8)::x22
end type
type(cc)::typ3(100,100)
if(storage_size(typ1)/=8) print *,'err1'
if(storage_size(typ2)/=16) print *,'err1'
if(storage_size(typ3)/=128) print *,'err1'
end
subroutine s2
class(*),pointer::a1,a2,a4,a8
allocate(a1,source=1_1)
allocate(a2,source=1_2)
allocate(a4,source=1_4)
allocate(a8,source=1_8)
if(storage_size(a1)/=8) print *,'err1'
if(storage_size(a2)/=16) print *,'err2'
if(storage_size(a4)/=32) print *,'err4'
if(storage_size(a8)/=64) print *,'err8'
end
