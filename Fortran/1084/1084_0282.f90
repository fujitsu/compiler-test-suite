         type t0
           integer::l
         end type
         type,extends(t0):: tt
          integer::i=0
         end type
         type,extends(tt)::tt2
          integer::j=0
         end type
         type ty
           class(t0),pointer :: ty_ptr(:)
         end type
          type(ty)::obj
          class(t0),pointer :: ty_ptr(:)
          class(t0),pointer :: ty_ptr2(:)
          type(tt),target :: ty_tgt(2)
          type(tt2),target :: ty_tgt2(2)
          ty_tgt%i = 2
          ty_ptr=>ty_tgt
          ty_ptr2=>ty_tgt2
          obj%ty_ptr=>ty_tgt
          select type(aa1=>ty_ptr)
           type is(tt)
              aa1(1)%i =35
              ty_ptr2=>aa1
            select type(aa=>ty_ptr2)
              type is(tt)
                if(aa(1)%i.ne.35)print*,"102"
                select type(aa1=>ty_ptr)
                   type is(tt)
                     aa1(1)%i =36
                     ty_ptr2=>aa1
                   select type(aa=>ty_ptr2)
                      type is(tt)
                       if(aa(1)%i.ne.36)print*,"102"
                      type is(tt2)
                        print*,"302"
                   end select
               end select
              type is(tt2)
                print*,"302"
            end select
          end select
          print*,"PASS"
        end
