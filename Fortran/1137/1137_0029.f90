subroutine s1
type AbstractToken
  integer::x
end type
type,extends(AbstractToken)::AnchorToken
  character(:),pointer:: value
end type

   class(AbstractToken), allocatable :: token
   type (AbstractToken):: name 

          select type(qq => token)
          type is (AnchorToken)
             token  = name
          end select
end
print *,'sngg798j : pass'
end
