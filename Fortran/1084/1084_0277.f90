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
          class(t0),pointer :: ty_ptr(:)
          class(t0),pointer :: ty_ptr2(:)
          class(t0),pointer :: ty_ptr3(:)
          type(tt),target :: ty_tgt(2)
          ty_tgt%i = 2
          ty_ptr=>ty_tgt
          ty_ptr3=>ty_tgt
          allocate(ty_ptr3(2))
          select type(aa1=>ty_ptr)
           type is(tt)
               if(aa1(1)%i.ne.2)print*,"102"
               aa1(1)%i =35
               ty_ptr2=>ty_ptr3
               ty_ptr2=>ty_ptr
              select type(aa=>ty_ptr2)
               type is(tt)
                 if(aa(1)%i.ne.35)print*,"101"
              end select
          end select
          print*,"PASS"
        end
