      type ty
      integer(kind=8) :: num
      integer(kind=8) :: num1
      end type
 
      type, extends(ty):: ty1
      integer(kind=8) :: num2
      end type
 
      type, extends(ty1):: ty2
      integer(kind=8) :: num3
      end type
 
       TYPE con
       class(ty),POINTER::ptr(:)
       class(ty),POINTER::ptr_1(:)
       END TYPE
 
 
       TYPE(con)::obj(10)
       allocate(ty2::obj(2)%ptr_1(10))
        obj(2)%ptr_1%num = 20
        obj(2)%ptr_1(1)%num = 40
        obj(2)%ptr_1(2)%num = 50
       allocate(obj(1)%ptr, SOURCE=(/obj(2)%ptr_1(1),obj(2)%ptr_1(2),obj(2)%ptr_1(3)/))
        print*,obj(1)%ptr(1)%num
        print*,obj(1)%ptr(2)%num
        print*,obj(1)%ptr(3)%num
end

