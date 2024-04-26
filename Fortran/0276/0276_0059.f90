type ty
integer :: trg
end type
type(ty),target :: obj1
type(ty),target :: obj2
obj1%trg=10
obj2%trg=20
write(1,*)obj2
rewind(1)
read(1,*)fun()
if(obj1%trg .ne. 20)print*,"101"
print *,"Pass"
contains
        function fun()
        type(ty),pointer::fun
        fun=>obj1
        end function
end
