         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
          type ty
            class(AbstractToken), allocatable :: token
          end type
          type(ty)::obj
             allocate(AnchorToken::obj%token)
                  select type(qq => obj%token)
                    type is (AnchorToken)
                      if (allocated(obj%token)) then
                          deallocate(obj%token)
                      endif
                      allocate(AbstractToken::obj%token)
                      select type(qq=>obj%token)
                        type is (AbstractToken)
                          qq%x =10
                          if (allocated(obj%token)) deallocate(obj%token)
                          allocate(AnchorToken::obj%token)
                          call sub2(obj%token)
                           select type(qq=>obj%token)
                             type is (AnchorToken) 
                              if(qq%x.ne.15)print*,"304"
                           end select
                      end select
                     type is (AbstractToken)
                     print*,"802"
                  end select
         contains
         subroutine sub2(t1)
            class(AbstractToken), allocatable ::t1
            select type(qq =>t1)
               type is (AnchorToken)
                          qq%x =15
               type is (AbstractToken)
                     print*,"812"
            end select
         end
        end
        print *,'pass'
        call s1
        end


