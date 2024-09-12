     module m   
        type ty
           integer :: ii = 3
        end type
         
        type,extends(ty) :: tty
             integer :: jj = 30
        end type
           type(tty),target :: trg
           type(ty),target :: trg2
        type ty2
           integer::y(4)
           class(ty),pointer::ptr=>trg2
        end type
        type ty3
           integer::x(3)
           type(ty2)::obj(2) 
        end type
       type(ty3)::obj3
       type(ty3)::obj4(2) = ty3([20,30,60],ty2(10,trg))
     contains
        subroutine sub2()
          select type(A=>obj3%obj(1)%ptr)
          type is(ty)
            if(A%ii.ne.3)print*,"222"
          class default
            print*,"224"
          end select
         select type(A=>obj3%obj(2)%ptr)
          type is(ty)
            if(A%ii.ne.3)print*,"222"
          class default
            print*,"324"
          end select

       end 
      function fun()
        integer::fun
          select type(A=>obj4(1)%obj(2)%ptr)
          type is(tty)
            if(A%jj.ne.30)print*,"232"
            fun = A%jj
          class default
            print*,"534"
          end select
          select type(A=>obj4(1)%obj(2)%ptr)
          type is(tty)
            if(A%jj.ne.30)print*,"232"
            fun = A%jj
          class default
            print*,"634"
          end select
       end
   end module
   use m
        call sub2()
        if(fun().ne.30)print*,"102"
          print*,"PASS"
        end
