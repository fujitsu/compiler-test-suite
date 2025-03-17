type ydef
 integer scalar
 integer array(2)
end type
type xdef
 integer scalar
 integer array(2)
 type(ydef)::ty(2)
end type

 type (xdef)::tx(2)

 tx(1)%scalar   = 1
 tx%scalar   = 1

 tx(1)%ty(1)%scalar   = 1
 tx%ty(1)%scalar   = 1
 tx(1)%ty%scalar   = 1

if ( tx(1)%scalar  == 1 .and. &
     tx(1)%ty(1)%scalar  == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1)
 print *,tx(2)
endif
end
