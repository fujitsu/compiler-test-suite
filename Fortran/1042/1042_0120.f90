type ydef
 integer scalar
 integer array(2)
end type
type xdef
 integer scalar
 integer array(2)
 type(ydef)::ty(2)
end type

 type (xdef),pointer::tp(:)
 type (xdef),target::tx(2)
 tp=>tx

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
 print *,tp(1)
 print *,tp(2)
endif
end
