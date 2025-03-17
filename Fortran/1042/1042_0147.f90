module mdef
type ydef
 logical(8) scalar
 logical(8) array(2)
end type
type xdef
 logical(8) scalar
 logical(8) array(2)
 type(ydef)::ty(2)
end type
end module

 use mdef

interface
subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 logical(8)::ii
 optional::ii
end subroutine
end interface
 type (xdef)::tx(2)
 call sub(tx=tx)

end

subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 logical(8)::ii
 optional::ii

 tx(1)%scalar   = .true.
 tx%scalar   = .true.

 tx(1)%array(1) = .true.
 tx(1)%array = .true.
 tx%array(1) = .true.

if ( tx(1)%scalar  .and. tx(1)%array(1) ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1)
 print *,tx(2)
endif
end subroutine
