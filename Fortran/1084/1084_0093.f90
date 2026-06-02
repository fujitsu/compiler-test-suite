         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
           character(len=1),pointer:: value
         end type
        
          class(AbstractToken), allocatable :: token
         type ty
          class(AbstractToken), allocatable :: token
         end type
          type(ty)::obj
          select type(qq => token)
                  type is (AnchorToken)
                     if (allocated(token)) deallocate(token)
                  type is (AbstractToken)
                     if (allocated(token)) deallocate(token)
          end select
          if(allocated(token))print*,"101"
          select type(qq => obj%token)
                  type is (AnchorToken)
                     if (allocated(obj%token)) deallocate(obj%token)
                  type is (AbstractToken)
                     if (allocated(obj%token)) deallocate(obj%token)
          end select
          if(allocated(obj%token))print*,"102"
        end
        print *,'pass'
        call s1
        end


