subroutine sub(idmys,idmyl)
common istep
dimension lstp(5)
do i=1,5
  read(5,*) istep
  do j=1,3
    read(5,*) istep
  enddo
  if ( idmyl.lt.idmys .and. istep.ge.idmyl ) goto 100
  lstp(i) = istep
enddo
100 continue
if ( sum(lstp)/=15 ) then
  print *,"NG"
  stop
endif
print *,"OK"
return
end
common istep
call sub(2,3)
end
subroutine set(istep)
istep=2
end
