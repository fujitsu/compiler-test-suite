integer ::a(5,5) 
type z
  integer,allocatable::a(:,:)
end type z
type(z)::aa

aa=z(reshape((/1,2,1,2,1, 0,1,2,1,0, 0,1,2,0,0, &
               0,1,0,2,0, 0,0,2,3,0/),(/5,5/)))
forall (i=1:5)
   where ( aa%a(i,:) .eq. 0 )
      aa%a(:,i) = i
   endwhere
end forall
if( any((/aa%a/)/=(/1,1,1,1,1, 0,1,2,1,2, 0,1,2,3,0, &
                    0,1,4,2,0, 0,5,5,5,5/)) ) write(6,*) "NG"

aa=z(reshape((/1,2,1,2,1, 0,1,2,1,0, 0,1,2,0,0, &
               0,1,0,2,0, 0,0,2,3,0/),(/5,5/)))
forall (i=1:5)
   where ( aa%a(i,:) .eq. 0 )
      aa%a(:,i) = i
   elsewhere ( aa%a(i,:) >2 )
      aa%a(i,:) = 6
   endwhere
end forall
if( any((/aa%a/)/=(/1,1,1,1,1, 0,1,2,1,2, 0,1,2,3,0, &
                    0,1,4,2,0, 0,5,6,6,5/)) ) write(6,*) "NG"
print *,'pass'
end
