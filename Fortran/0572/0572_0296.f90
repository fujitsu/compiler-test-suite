integer :: aa(4:8)
        aa = 2
        aa = fun1(aa)
        print*,"pass"
        contains
        function fun1(bb)
        type(*)::bb(..)
        integer :: fun1(5),ss(5)
        ss =10
        fun1=rank(bb)
        fun1 =ss
        end function
        end
