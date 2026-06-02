 subroutine test(fun)
    interface
      function fun()
         class(*), pointer :: fun
       end
      subroutine sub(ccc)
        class(*),intent(inout) :: ccc
      end
    end interface
   call sub(fun())
  end
  subroutine sub(ccc)
    class(*),intent(inout) :: ccc
    select type(x=>ccc)
      type is(integer)
        if(x.ne.10)print*,"101"
        x =12
        select type(x=>ccc)
          type is(integer)
           if(x.ne.12)print*,"102"
          type is(real)
           print*,"103"
        end select
      type is(real)
        print*,"104"
     end select
     print*,"PASS"
  end
   function fun()
     class(*), pointer :: fun
     allocate(fun,source=10)
   end
    interface
      function fun()
         class(*), pointer :: fun
       end
    end interface
   call test(fun)
  end
