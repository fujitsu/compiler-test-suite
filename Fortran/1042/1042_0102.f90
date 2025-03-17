type ydef
 integer scalar
 integer array(2,2)
end type
type xdef
 integer scalar
 integer array(2,2)
 type(ydef)::ty(2,2)
end type

 type (xdef)::tx(2,2)

 tx(1,1)%array(1,1) = 1
 tx(1,1)%array = 1
 tx%array(1,1) = 1

 tx(1,1)%ty(1,1)%array(1,1) = 1
 tx%ty(1,1)%array(1,1) = 1
 tx(1,1)%ty%array(1,1) = 1
 tx(1,1)%ty(1,1)%array = 1

if ( tx(1,1)%array(1,1) == 1 .and. &
     tx(1,1)%ty(1,1)%array(1,1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1,1)
 print *,tx(2,2)
endif
end
