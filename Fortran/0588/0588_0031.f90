          type ty
            integer,pointer::ptr
          end type
          type,extends(ty)::ty1
            integer,pointer::ptr1
          end type
          type ty2
           integer::x
           class(ty),pointer::polyobj
         end type
         type(ty2)::obj = ty2(10,NULL())
         type(ty2)::obj2
         data obj2 / ty2(10,NULL())/
         if(associated(obj2%polyobj).neqv..false.)print*,"101"
         if(associated(obj%polyobj).neqv..false.)print*,"102"
           print*,"PASS"
         end

