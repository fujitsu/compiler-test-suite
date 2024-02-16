implicit none
  complex, save :: i(2)
  complex :: j(2)
  i(:)=(2,4)
  abc: where(i(:)%re.eq.0)
        j=0
       elsewhere
        j%re = 1+i(:)%im
        j%im = 1+i(:)%re
       end where abc
  if(any(j/=(5,3))) print*,101
  print*,"Pass"
end
