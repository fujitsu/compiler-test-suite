        module mod
        contains
       function fun()
       integer,dimension(2):: fun,fun2
       fun=10
       return
       entry fun2()
       fun2=20
       end  function
        end module

       use mod
       integer,dimension(2):: arr
        arr = fun()
        if (arr(1).ne.10) stop "NG1"
        if (arr(2).ne.10) stop "NG2"
        arr = fun2()
        if (arr(1).ne.20) stop "NG3"
        if (arr(2).ne.20) stop "NG4"
        print *,'PASS'
        end
        

