 subroutine test03()
integer,allocatable::str(:,:),sss(:,:)
k=0
kk=0
kkk=0
 !$omp single
allocate(str(2,3),sss(3,2))
str=reshape((/1,2,3,4,5,6/),(/2,3/))
sss=reshape((/1,2,3,4,5,6/),(/2,3/))+10
nnn=1
 !$omp parallel
 !$omp do private(str,sss)
 do j=1,size((/(ii,ii=1,nnn)/)) 
   k=k+1
   sss(j,1)=sss(j,1)+1
   str(j,1)=str(j,1)+1
   do i=1,10
     kk=kk+1
   end do
   do i=1,10
     kk=kkk+1
   end do
 end do
 !$omp end do
 !$omp endparallel
 !$omp endsingle
 end subroutine
 call test03()
 print *,"pass"
 end
