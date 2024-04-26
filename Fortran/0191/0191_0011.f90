type ty1
character cha
end type
type (ty1) :: i(10),arr(10)
arr(1 )%cha='a'
arr(2 )%cha='b'
arr(3 )%cha='c'
arr(4 )%cha='d'
arr(5 )%cha='e'
arr(6 )%cha='f'
arr(7 )%cha='g'
arr(8 )%cha='h'
arr(9 )%cha='i'
arr(10)%cha='j'
i= sub(arr)
if (i(1)%cha.ne.'a') print *,'err1'
if (i(2)%cha.ne.'b') print *,'err1'
if (i(3)%cha.ne.'c') print *,'err1'
print *,'pass'
contains
impure elemental type(ty1)  function   sub(i)
intent(in) :: i
type(ty1) :: i
sub=i
end function
end
