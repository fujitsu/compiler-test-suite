subroutine sub
common istep,idmys,idmyl,lstp(5)
do i=1,5
  read(5,*) istep
  if ( idmyl.lt.idmys .and. istep.ge.idmyl ) goto 100
  lstp(i) = istep
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
 common istep,idmys,idmyl,lstp(5)
 idmys = 2 ; idmyl=3
 do i=1,5; lstp(i)=i ; enddo
 call sub
 end
