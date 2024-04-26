ng=0
 call s1(ng)
if ( ng.eq.1 ) then 
   print *, "NG"
else 
   print *, "OK" 
endif
stop
end

subroutine s1(ng)
integer(kind=4),dimension(2000)::ipv,vpv
parameter (ipv=20)
vpv=20
if ( ipv(1).ne.vpv(1) ) ng=1
return
end
