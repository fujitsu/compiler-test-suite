MODULE mod1
  TYPE ty1
    INTEGER(kind=8) :: i1=11
  END TYPE
 
  TYPE,EXTENDS(ty1):: ty2
    INTEGER(kind=8) :: i2=10
  END TYPE
  CONTAINS
    FUNCTION fun()
      class(*),pointer:: fun
      class(*),pointer:: fun1
      allocate(ty2:: fun)
      ENTRY fun1()
        ALLOCATE(ty1::fun1)
        select type(fun1)
        type is(ty1)
         if(fun1%i1 == 11)then 
           print *,"PASS"
         else
          print *,101
         endif
        TYPE IS(ty2)
         print *,101
        class default
        print*,223
        end select
        deallocate(fun1)
        allocate(ty2:: fun1)
      RETURN
    END FUNCTION
END MODULE
use mod1
class(*) ,pointer :: res
res=>fun1()
select type(res)
 type is (INTEGER)
  print *,201
 type is(character (len=*))
  print *,301
  class is(ty1)
  print *,"PASS"
  class default 
  print *,101
 end select
end 
