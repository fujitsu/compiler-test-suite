integer::aaa(1,1,1,1,1,1,1,1),bbb(1)
aaa=1
bbb=1
call sss(aaa,bbb)
print *,'pass'
contains
subroutine sss(aaa,bbb)
integer::aaa(:,:,:,:,:,:,:,:)
integer::bbb(:)
integer::ccc(1)=-10
!$omp atomic capture
ccc(1)=aaa(1,1,1,1,1,1,1,1)
aaa(1,1,1,1,1,1,1,1)=bbb(1)
!$omp end atomic
!$omp atomic capture
ccc(1)=bbb(1)
bbb(1)=aaa(1,1,1,1,1,1,1,1)
!$omp end atomic
!$omp atomic capture
aaa(1,1,1,1,1,1,1,1)=bbb(1)
bbb(1)=1*bbb(1)
!$omp end atomic
!$omp atomic capture
bbb(1)=aaa(1,1,1,1,1,1,1,1)
aaa(1,1,1,1,1,1,1,1)=aaa(1,1,1,1,1,1,1,1)*1
!$omp end atomic
end subroutine
end
