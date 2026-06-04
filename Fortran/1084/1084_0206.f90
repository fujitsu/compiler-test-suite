         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
         type ty
            class(AbstractToken),pointer :: token
         end type
         type(ty)::obj
             allocate(obj%token)
                  select type(qq => obj%token)
                    class is (AnchorToken)
                        print*,"801"
                    class is (AbstractToken)
                      select type(rr =>qq)
                        class is (AnchorToken)
                          print*,"802"
                          obj%token%x =10
                        class is (AbstractToken)
                          select type(qq => obj%token)
                             type is (AbstractToken)
                                qq%x =10
                                if(qq%x.ne.10)print*,"101", qq%x
                                 qq%x =11
                               select type(qq => obj%token)
                                 type is (AbstractToken)
                                    if(qq%x.ne.11)print*,"103"
                                    qq%x =12
                                 type is (AnchorToken)
                                       print*,"803"
                               end select
                                 if(qq%x.ne.12)print*,"109"
                                 deallocate(obj%token)
                           end select
                      end select
                    end select
                    allocate(AnchorToken::obj%token)
                    select type(qq => obj%token)
                     class is (AbstractToken)
                       select type(rr =>qq)
                         class is (AbstractToken)
                           select type(qq => obj%token)
                             type is (AbstractToken)
                                       print*,"803"
                             type is (AnchorToken)
                                qq%x =10
                                if(qq%x.ne.10)print*,"101", qq%x
                                 qq%x =11
                               select type(qq => obj%token)
                                 type is (AbstractToken)
                                       print*,"803"
                                 type is (AnchorToken)
                                    if(qq%x.ne.11)print*,"103"
                                    qq%x =12
                               end select
                                 if(qq%x.ne.12)print*,"109"
                                 deallocate(obj%token)
                           end select
                      end select
                    end select

        end
        print *,'pass'
        call s1
        end


