



subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer,parameter :: ans=10000
  integer :: res
  
  res = 0

!$omp parallel
!$omp do collapse(2) reduction(+:res)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res = res+1
           end do
        enddo
     end do
  enddo
!$omp end do
!$omp end parallel



  if(ans .eq. res) then
     print *,"no1 OK"
  else
     print *,"no1 NG",res
  endif
end subroutine sub01


subroutine sub02(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer,parameter :: ans=10000
  integer :: res
  
  res = 0

  do l = ls, le, linc
!$omp parallel
!$omp do collapse(3) reduction(+:res)
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res = res+1
           end do
        enddo
     end do
!$omp end do
!$omp end parallel
  enddo




  if(ans .eq. res) then
     print *,"no2 OK"
  else
     print *,"no2 NG",res
  endif
end subroutine sub02



subroutine sub03(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer,parameter :: ans=10000
  integer :: res
  
  res = 0

  do l = ls, le, linc
!$omp parallel
!$omp do collapse(3) reduction(+:res)
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res = res+1
           end do
        enddo
     end do
!$omp end do
!$omp end parallel
  enddo




  if(ans .eq. res) then
     print *,"no3 OK"
  else
     print *,"no3 NG",res
  endif
end subroutine sub03


program main
integer :: mis,mie,miinc,mjs,mje,mjinc
integer :: mks,mke,mkinc,mls,mle,mlinc

mis=1
mie=10
miinc=1
mjs=11
mje=2
mjinc=-1
mks=1
mke=10
mkinc=1
mls=10
mle=1
mlinc=-1

call sub01(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc)

mis=1
mie=10
miinc=1
mjs=1
mje=10
mjinc=1
mks=1
mke=10
mkinc=1
mls=1
mle=10
mlinc=1

call sub02(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc)


mis=10
mie=1
miinc=-1
mjs=1
mje=10
mjinc=1
mks=10
mke=1
mkinc=-1
mls=1
mle=10
mlinc=1
call sub03(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc)

end program main
