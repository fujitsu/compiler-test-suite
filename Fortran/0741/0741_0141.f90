type z
  integer,allocatable::za(:,:)
end type z
type(z)::a,b

a=z(reshape((/0,1,2,1,0, 0,1,2,0,0, 0,1,0,2,0, 0,0,2,3,0/),(/5,4/)))
b=z(reshape((/0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0/),(/5,4/)))

forall (i=1:5)
  where ( a%za(i,:) .eq. 0 ) a%za(i,:) = i
  b%za(i,:) = i / a%za(i,:)
end forall

if (any((/a%za/)/=(/1,1,2,1,5,1,1,2,4,5,1,1,3,2,5,1,2,2,3,5/))) write(6,*) "NG"
if (any((/b%za/)/=(/1,2,1,4,1,1,2,1,1,1,1,2,1,2,1,1,1,1,1,1/))) write(6,*) "NG"
print *,'pass'
end
