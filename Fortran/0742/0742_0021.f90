subroutine s(i,k,ks)

  k = k*3
  if ( i.gt.2 ) then
    ks = k*3+ks
  endif

  if ( ks.ne.9) then
    print *,"*** ng ***"
  else
  endif
end

k=1
ks=0
call s(3,k,ks)
print *,'pass'
end
