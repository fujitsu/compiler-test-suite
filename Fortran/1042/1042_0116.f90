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
 integer::v(2)
 v=(/1,2/)
 tx(v)%scalar   = 1
 tx%scalar   = 1

 tx(1)%array(v) = 1
 tx(v)%array(1) = 1

 tx(1)%ty(v)%scalar   = 1
 tx(v)%ty(1)%scalar   = 1
 tx(v)%ty(1)%scalar   = 1

 tx(v)%ty(1)%array(1) = 1
 tx(1)%ty(v)%array(1) = 1
 tx(1)%ty(1)%array(v) = 1

if ( tx(1)%scalar  == 1 .and. tx(1)%array(1) == 1 .and. &
     tx(1)%ty(1)%scalar  == 1 .and. tx(1)%ty(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(v)
 print *,tx(2)
endif
end
