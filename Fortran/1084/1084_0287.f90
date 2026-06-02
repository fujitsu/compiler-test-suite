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
          type(tt),target :: ty_tgt(2)
          type(tt2),target :: ty_tgt2(2)
          ty_tgt%i = 2
          ty_tgt2%i = 3
          ty_ptr=>ty_tgt
          obj%ty_ptr=>ty_tgt
          select type(aa1=>ty_ptr)
           type is(tt)
              aa1(1)%i =35
              call sub2(aa1)
              ty_ptr=>ty_tgt2
              call sub(ty_ptr)
           class default
             print*,"111"
          end select
          select type(aa1=>obj%ty_ptr)
           type is(tt)
              aa1(1)%i =35
              call sub2(aa1)
              obj%ty_ptr=>ty_tgt2
              call sub(obj%ty_ptr)
           class default
             print*,"111"
          end select
          print*,"PASS"
         contains 
          subroutine  sub(aa)
          class(*)::aa(:)
          select type(aa1=>aa)
           type is(tt2)
             if(aa1(1)%i.ne.3)print*,"901"
           class default
             print*,"101"
          end select
          end
          subroutine  sub2(aa)
          class(*)::aa(:)
          select type(aa1=>aa)
           type is(tt)
             if(aa1(1)%i.ne.35)print*,"902"
           class default
             print*,"101"
          end select
        end
        end

