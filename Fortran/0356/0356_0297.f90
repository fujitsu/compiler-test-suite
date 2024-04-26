  integer y(5,10)/50*0/,z(6)/1,10,1,-1,-2,2/
  integer x
  integer flg/0/
  i=3
  k=3
  x = y(1,1)

  do k=2,8,4
     do i=x,10,-2
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.0 .or. k.ne.10) then
     print *,"NG1",i,k,y(1,1)
     flg = flg + 1
  endif

  i=3
  k=3
  do k=10,1,-1
     do i=x,10,-2
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.0 .or. k.ne.0) then
     print *,"NG2",i,k,y(1,1)
     flg = flg + 1
  endif

  i=3
  k=3
  do k=z(1),z(2),z(3)
     do i=x,10,-2
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.0 .or. k.ne.11) then
     print *,"NG3",i,k,y(1,1)
     flg = flg + 1
  endif

  i=3
  k=3
  do k=1,10,z(3)
     do i=x,10,-2
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.0 .or. k.ne.11) then
     print *,"NG4",i,k,y(1,1)
     flg = flg + 1
  endif

  i=3
  k=3
  do k=10,1,z(4)
     do i=x,10,-2
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.0 .or. k.ne.0) then
     print *,"NG5",i,k,y(1,1)
     flg = flg + 1
  endif

  i=3
  k=3
  do k=z(6),10
     do i=1,x
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.1 .or. k.ne.11) then
     print *,"NG6",i,k,y(2,1)
     flg = flg + 1
  endif

  if (flg == 0) then
     print *,"OK"
  endif
end program
