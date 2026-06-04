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
          ty_tgt2%i = 3
          ty_ptr=>ty_tgt
          obj%ty_ptr=>ty_tgt
          select type(aa1=>ty_ptr)
           type is(tt)
              aa1(1)%i =35
              ty_ptr2=>ty_tgt2
            select type(aa=>ty_ptr2)
              type is(tt)
                print*,"101"
              type is(tt2)
                if(aa(1)%i.ne.3)print*,"102"
                  ty_ptr2=>aa1
                  select type(aa=>ty_ptr2)
                   type is(tt)
                      if(aa(1)%i.ne.35)print*,"109"
                   type is(tt2)
                     print*,"302"
                   end select
             end select
            type is(tt2)
              print*,"102"
          end select
          select type(aa=>obj%ty_ptr)
            type is(tt)
             NULLIFY(obj%ty_ptr)
             obj%ty_ptr=>ty_tgt2
             select type(aa=>obj%ty_ptr)
             type is(tt)
                print*,"103"
              type is(tt2)
                if(aa(1)%i.ne.3)print*,"111"
             end select
          end select
          print*,"PASS"
        contains
         function fun(xx)
         class(t0),pointer,intent(in)::xx(:)
         class(t0),pointer::fun(:)
          select type(aa=>xx)
            type is(tt2)
                fun=>xx
            type is(tt)
               print*,"401"
          end select
         end
        end

