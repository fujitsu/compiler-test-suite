subroutine sub(idmys,idmyl)
common istep
dimension lstp(5)
do i=1,5
  read(5,*) istep
  if ( idmyl.lt.idmys ) then
    if ( istep.ge.idmyl ) goto 100
  else if ( idmyl.lt.0 ) then
    goto 100
  endif
  if ( idmys.lt.0 ) goto 100
  if ( idmys.ne.idmyl ) lstp(i) = istep
enddo
100 continue
do i=1,5
  if ( lstp(i).ne. i ) then
    print *,"NG"
    stop
  endif
enddo
print *,"OK"
return
end
common istep
call sub(2,3)
end
subroutine set(istep)
istep=2
end
