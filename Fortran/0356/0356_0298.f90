  integer y(5,10)/50*0/
  integer x
  i=3
  k=3
  x = y(1,1)+5

  do k=1,x
     do i=1,10
        y(k,i) = 1
     enddo
  enddo

  if (i.ne.11 .or. k.ne.6) then
     print *,"NG1",i,k,y(1,1)
  else
     print *,"OK"
  endif
end
