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
           class(t0),pointer :: ty_ptr2(:)
         end type
          type(ty)::obj
          type(ty)::obj2
          class(t0),pointer :: ty_ptr(:)
          type(tt),target :: ty_tgt(2)
          type(tt2),target :: ty_tgt2(2)
          ty_tgt%i = 2
          ty_tgt2%i = 3
          ty_ptr=>ty_tgt
          obj%ty_ptr=>ty_tgt
          select type(aa1=>ty_ptr)
           type is(tt)
              aa1(1)%i =35
              obj2 = ty(ty_tgt2,aa1)
              select type(aa=>obj2%ty_ptr)
              type is(tt)
                 print*,"101"
              type is(tt2)
                if(aa(1)%i.ne.3)print*,"102"
             end select
             select type(aa=>obj2%ty_ptr2)
              type is(tt)
                if(aa(1)%i.ne.35)print*,"112"
              type is(tt2)
                 print*,"103"
             end select
             type is(tt2)
              print*,"102"
          end select
          print*,"PASS"
        end

