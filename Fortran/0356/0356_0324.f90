  integer y(5,10)/50*0/
  integer x,chk/0/
  i=3
  k=3
  x = y(1,1)

  n = 1
  do k=1,x
     do i=1,10
        y(k,i) = n
        n=n+1
     enddo
  enddo

  if (i.ne.3 .or. k.ne.1 .or. n.ne.1) then
     print *,"NG1",x,i,k,y(1,1),n
     chk=chk+1
  endif

  do k=1,x
     n = 1
     do i=1,10
        y(k,i) = n
        n=n+1
     enddo
  enddo

  if (i.ne.3 .or. k.ne.1 .or. n.ne.1) then
     print *,"NG2",x,i,k,y(1,1),n
     chk=chk+1
  endif
  if (chk.eq.0) print *,"OK"

end program
