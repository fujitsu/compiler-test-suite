
subroutine bar(a,val1,val2,val3,val4)
  real,dimension(10,10,10,10) :: a
  integer :: val1,val2,val3,val4
  a(val1,val2,val3,val4) = val1+val2+val3+val4
end subroutine bar


subroutine sub01(a)
  real,dimension(10,10,10,10) :: a
  common /my_global/is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc

!$omp do collapse(4) 
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              call bar(a,i,j,k,l)
           end do
        end do
     enddo
   enddo
!$omp end do
end subroutine sub01


program main
  real,dimension(10,10,10,10) :: a
  common /my_global/is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  
  a=0

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

  call sub01(a)
  
  print *,sum(a)
  
end program main
