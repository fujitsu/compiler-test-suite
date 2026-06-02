type ty
integer :: trg
end type
type(ty),target :: obj1
type(ty),target :: obj2
obj1%trg=10
obj2%trg=20
write(57,*)obj2
rewind(57)
read(57,*)fun()
if(obj1%trg .ne. 20)print*,"101"
print *,"Pass"
contains
        function fun()
        type(ty),pointer::fun
        fun=>obj1
        end function
end
