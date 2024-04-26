subroutine sub(idmy)
common istep
dimension lstp(5)
do i=1,5
  read(5,*) istep
  if ( idmy.gt.0 ) goto 10
  if ( istep.eq.0 ) goto 100
10 continue 
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
call sub(1)
end
