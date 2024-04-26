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
call ss1(ng,ipv)
return
end
subroutine ss1(ng,ipv)
integer(kind=4),dimension(1000),intent(in)::ipv
integer(kind=4),dimension(1000)::iipv,vvpv
parameter (iipv=20)
vvpv=20
do i=1,1000
  if ( ipv (i).ne.iipv(i) ) ng=1
  if ( ipv (i).ne.vvpv(i) ) ng=1
  if ( iipv(i).ne.vvpv(i) ) ng=1
enddo
return
end

