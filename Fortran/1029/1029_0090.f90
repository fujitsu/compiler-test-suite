  logical::l
  l=.true.
  i=1;j=1

  if (i.eq.j) goto 100
  write(6,*) "NG"
 100 continue

  if (l) goto 200
  write(6,*) "NG"
 200 continue

 print*,'pass'

end
