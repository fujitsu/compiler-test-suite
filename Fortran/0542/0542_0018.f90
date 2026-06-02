        type ty
          class(*),pointer::cmp
          class(*),pointer::cmp2(:)
         end type
          type(ty)::obj
        
          integer(4),pointer::a
          integer(4),pointer::c(:)
          class(*),pointer::b
         allocate(a)
         allocate(c(3))
         allocate(b,source=1_4)
         b=>a
         obj%cmp=>a
         obj%cmp2=>c
       
        if(.not.associated(b,a)) print*,1011
        if(.not.associated(fun(),a)) print*,1012
         if(.not.associated(obj%cmp,a)) print*,1031
       
         select type(aa=>obj%cmp2)
          class default
           print*,91121
       
          type is(integer)
           if(.not.associated(c,aa(1:3))) print*,1041
         end select


        if(.not.associated(a,b)) print*,101
        if(.not.associated(a,fun())) print*,102
         if(.not.associated(a,obj%cmp)) print*,103
       
         select type(aa=>obj%cmp2)
          class default
           print*,911
       
          type is(integer)
           if(.not.associated(c,aa(1:3))) print*,104
         end select

         print*,"pass"
        contains
        function fun()
         class(*),pointer::fun
         fun=>a
        end
        end


