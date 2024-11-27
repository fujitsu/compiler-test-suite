type z
  integer,allocatable::za(:,:)
end type
type(z)::a,b,c

  a=z(reshape((/11,12,13,21,22,23,31,32,33/),(/3,3/)))
  c=z(reshape((/ 0, 0, 0, 0, 0, 0, 0, 0, 0/),(/3,3/)))

  forall (i=1:3)
    b = a
    where ( a%za(i,:) >=  22 ) a%za(i,:) = a%za(i,:) + a%za(i,:)
    where ( b%za(i,:) >=  22 ) c%za(i,:) = b%za(i,:)
  endforall

  if ( any((a%za-c%za)/=(reshape((/11,12,13,21,22,23,31,32,33/),(/3,3/)))) ) &
      write(6,*) "NG"

 print *,'pass'
end
