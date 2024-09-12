MODULE m1
  IMPLICIT NONE
  TYPE x_b
    INTEGER                         :: id  
  CONTAINS
    PROCEDURE  :: get => b_get
  END TYPE
  type,extends(x_b)::x_e
    integer::z
  end type
  TYPE xx
    class(x_b), POINTER :: p
  END TYPE

CONTAINS
  CHARACTER(len=1 ) FUNCTION b_get (d)
    CLASS(x_b)   , INTENT(IN) :: d  
    integer::k
     b_get='1'
      if(d%id/=1) print *,301
      k=0
      select type(d)
        typeis (x_e)
           if (d%z/=2) print *,501
      k=1
      end select
      if (k/=1) print *,1010
  END FUNCTION b_get
END MODULE
subroutine s1
use m1
    TYPE (xx  )   :: g 
    CHARACTER(len=1                    ) :: str
      allocate(x_e::g%p)
      select type(pp=>g%p)
        type is(x_e)
         pp%z=2
      end select
      g%p%id=1
      str = g%p%get()
      if(str/='1') print *,90
end
call s1
print *,'pass'
end
