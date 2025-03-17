type ydef
 integer scalar
 integer array(2)
end type
type xdef
 integer scalar
 integer array(2)
 type(ydef)::ty(2)
end type

 type (xdef),target::tx(2)
 type (xdef),pointer::tp(:)
 integer,pointer::ip
 integer,pointer::idp(:)

 tp => tx
 idp => tx%scalar
 ip=> tx(1)%scalar
 tp(1)%scalar   = 1
 tp%scalar   = 1

 tp(1)%ty(1)%scalar   = 1
 tp%ty(1)%scalar   = 1
 tp(1)%ty%scalar   = 1

if ( tp(1)%scalar  == 1 .and. &
     tp(1)%ty(1)%scalar  == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tx(1)
  print *,tx(2)
endif
end
