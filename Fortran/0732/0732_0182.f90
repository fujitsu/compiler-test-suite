  integer, parameter ::                     &
     a( 5 ) = (/(i,i=1,5)/),                &
     b( 5 ) = (/(mod (i, 2), i=1,5)/),      &
     c( 5 ) = mod ((/(i,i=1,5)/), 2),       &
     d( 5 ) = (/(mod (a( i ), 2), i=1,5)/), &
     e( 5 ) = mod (a, 2),                   &
     f( 5 ) = a - 2 * (a / 2)
  call sub(a,b,c,d,e,f)
print *,'pass'
  contains
    subroutine sub(i1,i2,i3,i4,i5,i6)
    integer,dimension(:)::i1,i2,i3,i4,i5,i6
    if (any(shape(i1)/=5))write(6,*) "NG"
    if (any(shape(i2)/=5))write(6,*) "NG"
    if (any(shape(i3)/=5))write(6,*) "NG"
    if (any(shape(i4)/=5))write(6,*) "NG"
    if (any(shape(i5)/=5))write(6,*) "NG"
    if (any(shape(i6)/=5))write(6,*) "NG"
    if (any(i1/=(/1,2,3,4,5/)))write(6,*) "NG"
    if (any(i2/=(/1,0,1,0,1/)))write(6,*) "NG"
    if (any(i3/=(/1,0,1,0,1/)))write(6,*) "NG"
    if (any(i4/=(/1,0,1,0,1/)))write(6,*) "NG"
    if (any(i5/=(/1,0,1,0,1/)))write(6,*) "NG"
    if (any(i6/=(/1,0,1,0,1/)))write(6,*) "NG"
    end subroutine
  end 
