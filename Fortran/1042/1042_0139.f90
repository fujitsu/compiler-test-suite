module mdef
type ydef
 character(8) scalar
 character(8) array(2)
end type
type xdef
 character(8) scalar
 character(8) array(2)
 type(ydef)::ty(2)
end type
end module

 use mdef

interface
subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 character*5::ii
 optional::ii
end subroutine
end interface
 type (xdef)::tx(2)
 call sub(tx=tx)
end

subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 character*5::ii
 optional::ii

 tx(1)%scalar   = '12345'
 tx%scalar   = '12345'

 tx(1)%array(1) = '12345'
 tx(1)%array = '12345'
 tx%array(1) = '12345'

 if ( present(ii) ) then
 tx(1)%ty(1)%scalar   = '12345'
 end if

if ( tx(1)%scalar  == '12345' .and. tx(1)%array(1) == '12345' ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1)
 print *,tx(2)
endif
end subroutine
