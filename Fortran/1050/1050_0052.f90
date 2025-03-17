

subroutine sub01()
  common /my_global/is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc

  integer,parameter :: ans=10000
  integer :: res

  res=0

  do l = ls, le, linc
!$omp parallel
!$omp do collapse(2) reduction(+:res)
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res = res + 1
           end do
        end do

     enddo
!$omp end do
!$omp end parallel
   enddo


  if(res .eq. ans) then
     print *,"no1 OK"
  else
     print *,"no1 NG",res
  endif


end subroutine sub01


subroutine sub02()
  common /my_global/is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc

  integer,parameter :: ans=10000
  integer :: res

  res=0

!$omp parallel
!$omp do collapse(4) reduction(+:res)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res = res + 1
           end do
        end do
     enddo
   enddo
!$omp end do
!$omp end parallel

  if(res .eq. ans) then
     print *,"no2 OK"
  else
     print *,"no2 NG",res
  endif


end subroutine sub02


program main
  common /my_global/is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  
  is=1
  ie=10
  iinc=1
  js=1
  je=10
  jinc=1
  ks=1
  ke=10
  kinc=1
  ls=1
  le=10
  linc=1

  call sub01()


  call sub02()
  
  
end program main
