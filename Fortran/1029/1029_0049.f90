  n=0
  i=1;j=1;k=1
  if (.not.(.not.(i.eq.k.and.j.eq.k))) then
    n=n+1
  else
    write(6,*) "NG"
  endif
  if (.not.(.not.(.not.(i.eq.k).and..not.(j.eq.k)))) then
    write(6,*) "NG"
  else
    n=n+1
  endif

  if (.not.(n==2)) write(6,*) "NG"
  print *,'pass'
 end
