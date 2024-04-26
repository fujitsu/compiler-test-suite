subroutine set(istep,i)
istep=i
end
subroutine sub(idmys,idmyl)
common istep,lstp(5)
i=1
10 continue
  read(5,*) istep
  if ( idmyl.lt.idmys .and. istep.ge.idmyl ) goto 100
  lstp(i) = istep
  i=i+1
  if ( i.le.5 ) goto 10
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
 common istep,lstp(5)
 call sub(2,3)
 end
