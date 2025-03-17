module mdef
type ydef
 real(16) scalar
 real(16) array(2)
end type
type xdef
 real(16) scalar
 real(16) array(2)
 type(ydef)::ty(2)
end type
end module

 use mdef

interface
subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 real(16)::ii
 optional::ii
end subroutine
end interface
 type (xdef)::tx(2)
 call sub(tx=tx)

end

subroutine sub(ii,tx)
 use mdef
 type (xdef)::tx(2)
 real(16)::ii
 optional::ii

 tx(1)%scalar   = 1
 tx%scalar   = 1

 if ( present(ii)) then
   tx(1)%array(1) = 1
 endif
 tx(1)%array = 1
 tx%array(1) = 1

 tx(1)%ty(1)%scalar   = 1
 tx%ty(1)%scalar   = 1
 tx(1)%ty%scalar   = 1

 tx(1)%ty(1)%array(1) = 1
 tx%ty(1)%array(1) = 1
 tx(1)%ty%array(1) = 1
 tx(1)%ty(1)%array = 1

if ( abs(tx(1)%scalar-1)  < 0.001 .and. abs(tx(1)%array(1)-1) < 0.001 .and. &
     abs(tx(1)%ty(1)%scalar-1)  < 0.001 .and. abs(tx(1)%ty(1)%array(1)-1)  < 0.001 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1)
 print *,tx(2)
endif
end subroutine
