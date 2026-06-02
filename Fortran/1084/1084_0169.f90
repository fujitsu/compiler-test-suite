         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
          type ty
            class(AbstractToken), pointer :: token
          end type
          type(ty)::obj
                  allocate(AnchorToken::obj%token)
                  select type(qq => obj%token)
                    type is (AnchorToken)
                      if (associated(obj%token)) then
                          deallocate(obj%token)
                      endif
                      allocate(AbstractToken::obj%token)
                      call sub2(obj%token)
                    type is (AbstractToken)
                     print*,"802"
                  end select
                  select type(qq => obj%token)
                    type is (AnchorToken)
                       print*,"812"
                    type is (AbstractToken)
                     if(qq%x.ne.13)print*,"121"
                  end select
         contains
         subroutine sub2(t1)
            class(*) ::t1
            select type(qq =>t1)
               type is (AnchorToken)
                     print*,"813"
               type is (AbstractToken)
                     qq%x =13
            end select
         end
        end
        print *,'pass'
        call s1
        end
