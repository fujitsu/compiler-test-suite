          module m1
           procedure(func01),bind(C,name='ss1') :: bbb2
           contains
           function func01(arg1) result(ret) bind(C)
              integer :: ret,arg1
              ret = arg1
           end function
         end module
        use m1
        integer::a,b,c
        common /bbb2/ a,b,c
         a=10
         b=20
         c=30
        if(bbb2(a) /=100) print*,"101"
        print*,"PASS"
        end
        function bbb2(arg1) result(ret) bind(C,name='ss1')
           integer :: ret,arg1,d,e,f
             common /bbb2/ d,e,f
           if(d .ne. 10 .and. e .ne. 20 .and. f .ne. 30)print*,"102"
           ret = arg1*10
        end function

