         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
           integer::xx
         end type
         type ty
            class(AbstractToken), allocatable :: token
          end type
          class(ty),allocatable::obj
          allocate(ty::obj)
          allocate(AnchorToken::obj%token)
          select type(qq1=>obj)
           type is(ty)
                  select type(qq => qq1%token)
                    type is (AnchorToken)
                      qq%x=-1
                      qq%xx=-2
                      if (allocated(qq1%token)) then
                          deallocate(qq1%token)
                      endif
                      allocate(AbstractToken::qq1%token)
                      select type(qq=>qq1%token)
                        type is (AbstractToken)
                          qq%x =10
                          if (allocated(qq1%token)) deallocate(qq1%token)
                         type is (AnchorToken)
                          print*,"801"
                      end select
                     type is (AbstractToken)
                     print*,"802"
                  end select
                  end select
        end
        print *,'pass'
        call s1
        end


