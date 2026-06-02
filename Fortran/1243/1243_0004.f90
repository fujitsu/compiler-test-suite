program main
  integer ::k,l,m,x,o,n
  x=0
  k=10
  l=20
  m=30
  n=40
  o=50
  do concurrent(k=1:3,k>=2)
     do concurrent(l=1:3)
        do concurrent(m=1:3,m>=1)
        end do
        do concurrent(n=1:4,k==l)
           x=x+1
           do concurrent(o=2:4,n>2)
           end do
        end do
     end do
  end do
  if(x==8 .and. k==10 .and. l==20 .and. m==30 .and. n==40 .and. o==50) then
     print *,'sngp013 : pass'
  else
     print *,'sngp013 : fail',x,k,l,m,n,o
  end if
end program main
