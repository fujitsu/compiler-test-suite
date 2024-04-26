subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc,a)
  integer :: is(1),ie(1),iinc(1),js(1),je(1),jinc(1),ks(1),ke(1),kinc(1),ls(1),le(1),linc(1)
  target  :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  real,dimension(10,10,10,10) :: a
!$omp do collapse(4)
  do l = ls(1), le(1), linc(1)
     do k = ks(1), ke(1), kinc(1)
        do j = js(1), je(1), jinc(1)
           do i = is(1), ie(1), iinc(1)
              call bar(a,i,j,k,l)
           end do
        enddo
     end do
  enddo
!$omp end do
end subroutine sub01

print *,'pass'
end
subroutine bar(a,i,j,k,l)
  real,dimension(10,10,10,10) :: a
end

