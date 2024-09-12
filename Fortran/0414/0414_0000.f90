  function afun()
    type ty1
sequence
      integer(8)          :: chk( 1 )
    end type
    TYPE(ty1) :: afun
afun%chk=1
  end function

interface
  function afun()
  type ty1
sequence
    integer(8)          :: chk( 1 )
  end type
    TYPE(ty1) :: afun
  end function
end interface
  type ty1
sequence
    integer(8)          :: chk( 1 )
  end type
  TYPE(ty1) :: b
  b=afun()
print *,'pass'
end
