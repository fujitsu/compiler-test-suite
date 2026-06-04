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
       
        if(.not.associated(a,b)) print*,101
        if(.not.associated(a,fun())) print*,102
        if(.not.associated(c,obj%cmp2)) print*,103

         select type(aa=>b    )
          type is(integer)
         if(.not.associated(b,b)) print*,10111
         if(.not.associated(b,aa)) print*,10112
         if(.not.associated(b,a )) print*,10113
         if(.not.associated(a,b )) print*,10114
         if(.not.associated(b      ,a )) print*,10115
         if(.not.associated(a,aa       )) print*,10116
         end select
         select type(aa=>fun())
          type is(integer)
         if(.not.associated(fun(),a )) print*,10213
         if(.not.associated(a,fun() )) print*,10214
         end select
         select type(aa=>obj%cmp2)
          type is(integer)
         if(.not.associated(obj%cmp2,aa)) print*,10311
         if(.not.associated(obj%cmp2,aa)) print*,10312
         if(.not.associated(obj%cmp2,c )) print*,10313
         if(.not.associated(c,obj%cmp2 )) print*,10314
         if(.not.associated(obj%cmp2      ,c )) print*,10315
         if(.not.associated(c,aa       )) print*,10316
         end select
       
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


