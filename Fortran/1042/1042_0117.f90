type x
 integer scalar
 integer array(2)
end type

 type (x),target::ta(2)
 type (x),pointer,dimension(:)::tap
 
 tap=>ta
 tap%scalar   = 1
 tap%array(1) = 1

if ( ta(1)%scalar  == 1 .and. ta(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif
end
