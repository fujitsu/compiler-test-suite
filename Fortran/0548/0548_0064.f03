call s1
call s2
print *,'pass'
end
subroutine s1
integer(1),pointer :: pi1
integer(1),target :: i1
integer(2),pointer :: pi2
integer(2),target :: i2
integer(4),pointer :: pi4
integer(4),target :: i4
integer(8),pointer :: pi8
integer(8),target :: i8
real(4),pointer :: pr
real(4),target :: r

pi1 => i1
pi2 => i2
pi4 => i4
pi8 => i8
pr  => r
pi1 = 1
pi2 = 2
pi4 = 3
pi8 = 4
pr = 5.0
if(storage_size(pi1)/=storage_size(i1)) print *,'err1'
if(storage_size(pi2)/=storage_size(i2)) print *,'err2'
if(storage_size(pi4)/=storage_size(i4)) print *,'err3'
if(storage_size(pi8)/=storage_size(i8)) print *,'err4'
if(storage_size(pr)/=storage_size(r)) print *,'err4'

end
subroutine s2
integer, pointer :: p(:)
integer, target :: i(10)
real, pointer :: pr(:)
real, target :: r(10)
allocate(p(10),pr(10))
p => i
pr => r
p = 12
pr = 1.0
if(storage_size(p)/=storage_size(i)) print *,'err11'
if(storage_size(pr)/=storage_size(r)) print *,'err12'
end
