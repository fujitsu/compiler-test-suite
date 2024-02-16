integer::i,j
real(16),parameter::a=0.0,b=0.0
complex(16)::x(1000,1000)
complex(16)::s=(a,b)


do i=1,1000
  do j=1,1000
   x(j,i)=i
  end do
end do


do i=1,1000
  do j=1,1000
    s=s+x(j,i)
  end do
end do


if ( abs ( real(s) - 500500000 ) < 0.000001 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
