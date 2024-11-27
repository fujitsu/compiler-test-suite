call sub (2,3)
  print *,'pass'
end

subroutine sub(j,k)

type z
  integer(4),allocatable,dimension(:,:)::aa
end type
type (z)   a
integer(4),dimension(j,k)::b

  do i=1,j
    b(i,:)=i+1
  enddo
  a=z(b-1)

 if (any(a%aa/=reshape((/1,2,1,2,1,2/),(/j,k/)))) write(6,*) "NG"
end
