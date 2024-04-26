module m0
   type xyz
    integer :: a
      contains
      procedure,nopass :: prc1
     generic:: gen1=>prc1
   end type xyz
  contains
   subroutine prc1( tt,tt1,tt2,tt3,tt4,tt5)
    integer,optional :: tt
    integer,optional :: tt1
    integer,optional :: tt2
    integer,optional :: tt3
    integer,optional :: tt4
    integer,optional :: tt5
    if (present(tt)) print *,101
    if (present(tt1)) print *,102
    if (present(tt2)) print *,103
    if (present(tt3)) print *,104
    if (present(tt4)) print *,105
    if (present(tt5)) print *,106
   end subroutine
  end
  use m0
  type(xyz) :: obj
  call obj%gen1()
  print *,'pass'
  end
