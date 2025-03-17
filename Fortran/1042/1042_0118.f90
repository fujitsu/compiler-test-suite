type ydef
 integer scalar
 integer array(2)
end type
type xdef
 integer scalar
 integer array(2)
 type(ydef)::ty(2)
end type

 type (xdef),target::ta(2)
 type (xdef),pointer,dimension(:)::tap
 
 tap=>ta
 tap%scalar   = 1
 tap%array(1) = 1

 tap(1)%ty(1)%array(1) = 1
 tap(1)%ty(1)%array = 1
 tap%ty(1)%scalar   = 1
 tap(1)%ty%scalar   = 1


if ( ta(1)%scalar  == 1 .and. ta(1)%array(1) == 1 .and. &
     ta(1)%ty(1)%scalar  == 1 .and. ta(1)%ty(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif
end
