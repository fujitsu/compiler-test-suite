         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
           character(len=1),pointer:: value
         end type
         type ty
            class(AbstractToken), allocatable :: token
         end type
         type(ty)::obj
         type(ty)::obj2
            allocate(AbstractToken::obj%token)
            allocate(AnchorToken::obj2%token)
            select type(qq => obj%token)
                  class default
                    print*,"103"
                  type is (AnchorToken)
                     if (allocated(obj%token)) deallocate(obj%token)
                  type is (AbstractToken)
                     deallocate(obj%token)
                     allocate(AnchorToken::obj%token)
                     select type(qq => obj2%token)
                      class default
                        print*,"207"
                  type is (AnchorToken)
                     if (allocated(obj2%token)) deallocate(obj2%token)
             end select

             end select
            select type(qq=>obj%token)
                  class default
                    print*,"107"
                  type is (AnchorToken)
                     if (allocated(obj%token)) deallocate(obj%token)
             end select
            if(allocated(obj%token))print*,"101"
            if(allocated(obj2%token))print*,"151"
        end
        print *,'pass'
        call s1
        end


