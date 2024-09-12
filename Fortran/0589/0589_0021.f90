integer, target::t1=1
integer, target::t2=2
if(t1 /=1)print*,101,"t1=",t1
if(t2 /=2)print*,102,"t2=",t2
fun1()=fun2()
if(t1 /=2)print*,103,"t1=",t1
fun1()=fun3()
if(t1 /=500)print*,109,"t1=",t1
t1=100
fun2()=fun1()
if(t2 /=100)print*,104,"t2=",t2
if(t1 /=100)print*,105,"t1=",t1
print*,"Pass"
contains
        function fun1()
        integer, pointer::fun1
        fun1=>t1
        end function

        function fun2()
        integer, pointer::fun2
        fun2=>t2
        end function
        function fun3()
        integer ::fun3
        fun3=500
        end function
end
