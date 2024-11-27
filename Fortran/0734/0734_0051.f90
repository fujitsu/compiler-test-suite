 dom=1,1
j=0
do i=1,10
  select case(sum((/(i,-i,i,n=1,m)/)))
    case (5:)
      j=j+1
  end select
end do
if (j/=6)print *,'error-1'
j=0
do i=1,10
  select case(sum((/(i,-i,i,n=1,m)/)))
    case (:6)
      j=j+1
  end select
end do
if (j/=6)print *,'error-2'
j=0
do i=1,10
  select case(sum((/(i,-i,i,n=1,m)/)))
    case (1,2,3,4,5,6,1000:)
      j=j+1
  end select
end do
if (j/=6)print *,'error-3'
j=0;jj=0
do i=1,10
  select case(sum((/(i,-i,i,n=1,m)/)))
    case (5:)
      j=j+1
    case default
      jj=jj+1
  end select
end do
if (j/=6)print *,'error-12'
if (jj/=4)print *,'error-13'
j=0;jj=0
do i=1,10
  select case(sum((/(i,-i,i,n=1,m)/)))
    case (:6)
      j=j+1
    case (10000)
      j=0
    case default
      jj=jj+1
  end select
end do
if (j/=6)print *,'error-21'
if (jj/=4)print *,'error-23'
j=0;jj=0
do i=1,10
  select case(sum((/(i,-i,i,n=1,m)/)))
    case (1,2,3,4,5,6,1000:)
      j=j+1
    case default
      jj=jj+1
  end select
end do
if (j/=6)print *,'error-3'
if (jj/=4)print *,'error-33'
end do
print *,'pass'
end
