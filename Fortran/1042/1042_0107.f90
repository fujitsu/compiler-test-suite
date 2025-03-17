type x
 integer scalar
 integer array(5)
end type

 type (x)::ta(5)

 ta(1:5:1)%scalar   = 1
 ta(1::1)%scalar    = 1
 ta(:5:1)%scalar    = 1
 ta(::1)%scalar     = 1

 ta(1)%array(1:5:1) = 1
 ta(1)%array(1::1)  = 1
 ta(1)%array(:5:1)  = 1
 ta(1)%array(::1)   = 1
 ta(1)%array   = 1
 ta%array(1)   = 1


if ( ta(1)%array(1)   == 1 .and. &
     ta(1)%scalar   == 1 ) then
  print *,'pass'
else
 print *,ta(1)
 print *,ta(2)
endif

end
