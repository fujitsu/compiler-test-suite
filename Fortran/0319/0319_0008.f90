ng=0
call s1(ng)
if ( ng.eq.1 ) then ; print *,'NG'
else ;                print *,'OK' ; endif
stop
end
subroutine s1(ng)
integer(kind=4),dimension(1000)::ipv,vpv
parameter (ipv=20)
vpv=20
do i=1,1000
  if ( ipv(i).ne.vpv(i) ) ng=1
enddo
return
end

