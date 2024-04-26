subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc,a)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  target  :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  real,dimension(10,10,10,10) :: a
!$omp do collapse(4)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
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
