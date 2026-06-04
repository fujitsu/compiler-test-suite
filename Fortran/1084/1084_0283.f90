         type tt
          integer::i=0
         end type
         type,extends(tt)::tt2
          integer::j=0
         end type
         type ty
           class(tt),pointer :: ty_ptr
         end type
          type(ty)::obj
          class(tt),pointer :: ty_ptr
         type ty2
          type(tt):: ty_tgt
          type(tt2):: ty_tgt2
          class(tt),pointer :: ty_ptr
         end type
         class(ty2),allocatable,target::obj2
         allocate(obj2)
          obj2%ty_tgt%i = 2
          obj2%ty_tgt2%i = 3
          ty_ptr=>obj2%ty_tgt
          obj%ty_ptr=>obj2%ty_tgt
           select type(aa=>ty_ptr)
           type is(tt)
              ty_ptr=>obj2%ty_tgt2
            select type(aa=>ty_ptr)
              type is(tt)
                print*,"101"
              type is(tt2)
                if(aa%i.ne.3)print*,"102"
            end select
              type is(tt2)
                print*,"102"
          end select
          select type(aa=>obj%ty_ptr)
            type is(tt)
             obj%ty_ptr=>obj2%ty_tgt2
             obj2%ty_ptr=>obj2%ty_tgt2
             select type(aaa=>obj2)
             type is(ty2)
             select type(aa=>obj%ty_ptr)
             type is(tt)
                print*,"103"
              type is(tt2)
                if(aa%i.ne.3)print*,"111"
                select type(aa=>aaa%ty_ptr)
                 type is(tt)
                   print*,"123"
                 type is(tt2)
                  if(aa%i.ne.3)print*,"112"
                end select
             end select
             end select
          end select
          print*,"PASS"
        end

