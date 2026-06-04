call fa049 ()
print *,'pass'
end
  subroutine fa049 ()
  kkk=0
  forall (i=1:10,j=1:10,k=1:10,m=1:10,i<5.and.j>7.and.k==10.and.m<=7)
     kkk = kkk + i + j + k + m
  end forall
  if ( kkk /= 31 ) print *,'fail'

  kkk=0
  forall (i=1:10,j=1:11,k=1:10,m=1:10,i<5.and.j>7.and.k==10.and.m<=7)
     kkk = kkk + i + j + k + m
  end forall
  if ( kkk /= 32 ) print *,'fail'
  end
