

subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc

  integer,parameter :: ans=10000
  integer :: res1

  res1=0
  
!$omp do collapse(4) reduction(+:res1)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res1 = res1 +1
           end do
        enddo
     end do
  enddo
!$omp end do


  if (res1 .eq. ans) then
     print *,"no1 OK"
  else
     print *,"no1 NG"
  end if


end subroutine sub01

subroutine sub02(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc

  integer,parameter :: ans=10000
  integer :: res2

  res2=0
  
!$omp do collapse(3) reduction(+:res2)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res2 = res2 +1
           end do
        enddo
     end do
  enddo
!$omp end do

  if (res2 .eq. ans) then
     print *,"no2 OK"
  else
     print *,"no2 NG"
  end if


end subroutine sub02

subroutine sub03(is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc

  integer,parameter :: ans=10000
  integer :: res2

  res2=0
  

  do l = ls, le, linc
!$omp do collapse(2) reduction(+:res2)
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res2 = res2 +1
           end do
        enddo
     end do
!$omp end do
  enddo

  if (res2 .eq. ans) then
     print *,"no3 OK"
  else
     print *,"no3 NG"
  end if


end subroutine sub03


program main
integer :: mis,mie,miinc,mjs,mje,mjinc
integer :: mks,mke,mkinc,mls,mle,mlinc

mis=10
mie=1
miinc=-1
mjs=2
mje=11
mjinc=1
mks=11
mke=2
mkinc=-1
mls=1
mle=10
mlinc=1

call sub01(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc)

mis=10
mie=1
miinc=-1
mjs=10
mje=1
mjinc=-1
mks=10
mke=1
mkinc=-1
mls=10
mle=1
mlinc=-1
call sub02(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc)
call sub03(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,mls,mle,mlinc)




end program main
