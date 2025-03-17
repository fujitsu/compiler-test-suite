
subroutine sub01()
  common /my_global/is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc,ls,le,linc
  integer,parameter :: ans=10000
  integer :: res1,res2,res3
  integer :: flag

  res1 = 0
  res2 = 0
  res3 = 0
  flag = 0

  do l = ls, le, linc
!$omp do collapse(2) reduction(+:res1)
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res1 = res1+1
           end do
        end do
     enddo
!$omp end do
   enddo

  is=1
  ie=10
  iinc=1
  js=10
  je=1
  jinc=-1
  ks=1
  ke=10
  kinc=1
  ls=10
  le=1
  linc=-1

!$omp do collapse(4) reduction(+:res2)
  do l = ls, le, linc
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res2 = res2+1
           end do
        end do
     enddo
   enddo
!$omp end do

  is=10
  ie=1
  iinc=-1
  js=10
  je=1
  jinc=-1
  ks=10
  ke=1
  kinc=-1
  ls=10
  le=1
  linc=-1


  do l = ls, le, linc
!$omp do collapse(3) reduction(+:res3)
     do k = ks, ke, kinc
        do j = js, je, jinc
           do i = is, ie, iinc
              res3 = res3+1
           end do
        end do
     enddo
!$omp end do
   enddo



  if(res1 .ne. res2) then
     flag = 1
  end if
  if (res2 .ne. res3) then
     flag = 2
  end if
  if (res3 .ne. ans) then
     flag = 4
  end if


  if(flag .eq. 0) then
     print *,"OK"
  else
     print *,"NG",flag
  endif



end subroutine sub01


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
  
end program main
