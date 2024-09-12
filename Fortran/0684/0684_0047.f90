subroutine sub(i,j)
integer,pointer::a(:,:,:)
do kk=1,5
call xx(kk)
allocate(a(i:j,i:j,i:j))
a=reshape((/(k,k=1,27)/),(/3,3,3/))
!$OMP PARALLEL PRIVATE(a)
allocate(a(i+1:j+1,i+1:j+1,i+1:j+1));
 a=reshape((/(k,k=10,270,10)/),(/3,3,3/))
!$OMP END PARALLEL
end do
end
call sub(3,5)
print *,'pass'
end
subroutine xx(kk)
end
