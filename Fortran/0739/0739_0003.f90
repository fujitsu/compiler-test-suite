program PTest
integer, pointer :: i
integer, target  :: t=2

i => CopyTarget(t)
if(.not.associated(i))write(6,*) "NG"
if (i/=2)write(6,*) "NG"
i => CopyPointer(null())
if (associated(i))write(6,*) "NG"
print *,'pass'

contains

function CopyTarget(t)
integer, pointer :: CopyTarget
integer, target, intent(in) :: t
    CopyTarget => t
end function CopyTarget

function CopyPointer(p)
integer, pointer :: CopyPointer, p
    CopyPointer => p
end function CopyPointer

end program PTest
