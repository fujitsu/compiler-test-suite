  logical::ll
  ll=.false.
  i=1;j=1;k=1;l=1;m=1;n=1

  if ( ( (i+j+k)**l-m-n .eq. abs(-(i+j)**(l+k**(m+n))+i+j+k) ) .and.  &
       ( i+j**((k+l)**(m+n)) .eq. abs(-(n+m**((l+k)**(i+j)))) ) .and.  & 
       .not. ll )  goto 1000
  write(6,*) "NG"
 1000 continue

 print *,'pass'
end
