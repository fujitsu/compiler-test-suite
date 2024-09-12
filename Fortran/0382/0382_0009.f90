subroutine s
integer,pointer::p(:)
integer,target::t(3)
namelist /nam/ p
t=[1,2,3]
p=>t
t=[4,5,6]
write(1,nam)
end
subroutine chk
integer::p(3)
namelist /nam/ p
rewind 1
read(1,nam)
if (any(p/=[4,5,6]))print *,101,p
end
call s
call chk
print *,'pass'
end
