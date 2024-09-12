       program main
       real*4 rc1,fun1
       real*8 rc2,fun2
       rc1=fun1()
       print *,rc1
       rc2=fun2()
       print *,rc2
       stop
       end
       function fun1()
       real*4 fun1
       real*8 fun2
       fun1=1.0
       return
       entry fun2()
       fun2=1.0d+0
       return
       end
