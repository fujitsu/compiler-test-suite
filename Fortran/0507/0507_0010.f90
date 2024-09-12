module class_mod
  implicit none
  type, public :: typeA
     integer::x
  contains
    procedure :: aa => typeA_aa
  end type
contains
  subroutine typeA_aa( this, array)
    class(typeA), intent(in) :: this
    character(*), intent(in) :: array(*)
    write(1,*) "typeA aa:", array(:2)
    if (any(array(:2)/=['23','45'])) print *,201
    if (this%x/=1) print *,301
  end subroutine typeA_aa
end module class_mod

subroutine s1
  use class_mod, only: typeA
  implicit none
character(3)::a(2)/'123','456'/
type x
character(3)::a(2)
end type
type(x)::v
type(typea):: type_a
v%a(1)='123'
v%a(2)='456'
type_a%x=1
call type_a%aa( a(1)(2:))
call type_a%aa( v%a(1)(2:))
call sub01      ( a(1)(2:))
call sub01      ( v%a(1)(2:))
end
call s1
print *,'pass'
end
subroutine sub01(c)
character(*),c(*)
if (len(c)/=2) print *,1010
if (c(1)/='23') print *,1001
if (c(2)/='45') print *,1002
end
