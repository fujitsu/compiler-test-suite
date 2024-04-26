  integer y(10,10)/100*0/

  i=3
  k=3
  do k=1,10
     do i=1,10
        y(k,i) = 1
     enddo
  enddo
  if (i.ne.11 .or. k.ne.11) then
     print *,"NG1",i,k,y(1,1)
  else
     print *,"OK"
  endif
end
