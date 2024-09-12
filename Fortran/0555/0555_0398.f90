     module m1
     type ty
      integer(kind=4) :: num
      integer(kind=4) :: num1
      end type
 
      type, extends(ty):: ty1
      integer(kind=8) :: num2
      end type
 
      type, extends(ty1):: ty2
      integer(kind=8) :: num3
      end type
    end module
    use m1 
       TYPE con
       class(ty),POINTER::ptr
       END TYPE
 
       INTERFACE OPERATOR(+)
       function pls(a,b)
       import ty1
       import ty
       import ty2

       class(ty), pointer, intent(in) :: a
       class(ty), pointer, intent(in) :: b
       type(ty), pointer :: pls

       END function
       END INTERFACE operator(+)
 
       TYPE(con)::obj
       type cont
        class(ty),POINTER::pptr
        class(ty),POINTER::pptr1
       end type

       type(cont)::pobj
       allocate(pobj%pptr, pobj%pptr1)
 
        pobj%pptr%num = 3
        pobj%pptr1%num = 2
        obj= con(pobj%pptr + pobj%pptr1)
        if(sizeof(obj%ptr) .NE. 8) then
            print*,'Fail'
        else
            print*,'Pass'
        end if 
END
 
function pls(a,b)
      use m1
      class(ty), pointer, intent(in) :: a
      class(ty), pointer, intent(in) :: b
      type(ty),  pointer :: pls

      allocate(pls)
      pls%num = a%num + b%num
END function

