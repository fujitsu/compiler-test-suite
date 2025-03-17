module mdef
type ydef
 integer(8) scalar
 integer(8) array(2)
end type
type xdef
 integer(8) scalar
 integer(8) array(2)
 type(ydef)::ty(2)
end type
end module

 use mdef

interface
subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 integer(8)::ii
 optional::ii
end subroutine
end interface
 type (xdef)::tx(2)
 call sub(tx=tx)

end

subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 integer(8)::ii
 optional::ii

 tx(1)%scalar   = 1
 tx%scalar   = 1   

 tx(1)%array(1) = 1
 tx(1)%array = 1
 tx%array(1) = 1

if ( tx(1)%scalar  == 1 .and. tx(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1)
 print *,tx(2)
endif
end subroutine
