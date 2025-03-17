integer,dimension(2,1,2)::a,b,c,d

a=reshape((/4,3,2,1/),(/2,1,2/))
b=a
c=a
d=a

if ( all( a == reshape( (/1 ,(/(j,j=2,4)/) /),(/2,1,2/) ) ) .and. &
     all( b == reshape( (/1 ,(/(j,j=2,4)/) /),(/2,1,2/) ) ) .and. &
     all( c == reshape( (/1 ,(/(j,j=2,4)/) /),(/2,1,2/) ) ) .and. &
     all( d == reshape( (/1 ,(/(j,j=2,4)/) /),(/2,1,2/) ) ) .or. &
     .false.) write(6,*) "NG"

  print *,'pass'
end
