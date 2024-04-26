subroutine sub(idmys,idmyl)
common istep
dimension lstp(5)
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
common istep
call sub(2,3)
end
subroutine set(istep)
istep=2
end
