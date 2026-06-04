subroutine s1
  integer n,m,o,p,q
  integer:: a(1000,4,3,2,2:4)
  logical(4)::mask1(1000,4)=.true.
  logical(4)::mask21(1000)=.true.
  logical(4)::mask22(2)=.true.
  n=1000
  m=4
  o=3
  p=2
  q=4
  a=0

  do concurrent( k1=1:n , k2=1:m , mask1(k1,k2) )
     do concurrent(k3=1:o)
        do concurrent( k4=1:p,mask22(2) )
           do concurrent( k5=p:q )
              a(k1,k2,k3,k4,k5) = 1
           end do
        end do
     end do
  end do

  if( any(a/=1) ) print *,'fail'

  do concurrent( k2=1:2)
     do concurrent( k1=1:n ,mask21(k1) )
        a(k1,1,1,k2,2) = 2
     end do
  end do

  if( any(a==2) .and. any(a==1)) print *,'sngp015 : pass'
end subroutine s1

program main
  call s1
end program main
