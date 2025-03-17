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
 integer::i
 call sub(i)

 tx(i:i)%scalar   = 1
 tx%scalar   = 1

 tx(1)%array(i:i) = 1
 tx(i:i)%array(1) = 1

 tx(1)%ty(i:i)%scalar   = 1
 tx(i:i)%ty(1)%scalar   = 1
 tx(i:i)%ty(1)%scalar   = 1

 tx(i:i)%ty(1)%array(1) = 1
 tx(1)%ty(i:i)%array(1) = 1
 tx(1)%ty(1)%array(i:i) = 1

if ( tx(1)%scalar  == 1 .and. tx(1)%array(1) == 1 .and. &
     tx(1)%ty(1)%scalar  == 1 .and. tx(1)%ty(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(i:i)
 print *,tx(2)
endif
end
subroutine sub(i)
integer::i
i=1
end subroutine
