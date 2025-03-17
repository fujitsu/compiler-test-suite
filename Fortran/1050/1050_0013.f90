


subroutine sub01(is,ie,iinc,js,je,jinc,ks,ke,kinc)
  integer :: is,ie,iinc,js,je,jinc,ks,ke,kinc
  integer :: res
  integer,parameter :: ans = 1000
  integer :: get_svalue1, get_svalue2 ,get_svalue3
  integer :: get_evalue1, get_evalue2 ,get_evalue3
  integer :: get_ivalue1, get_ivalue2 ,get_ivalue3


  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = ks, ke, kinc
     do j = js, je, jinc
        do i = is, ie, iinc
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop01 : OK"
  else
     print *,"loop01 : NG ",res, ans
  endif
  
  res=0
!$omp do collapse(3) reduction(+:res)
  do k = ks, get_evalue1(),1
     do j = js, get_evalue2(),1
        do i = is, get_evalue3(),1
           res = res+1
        enddo
     end do
  enddo
!$omp end do

  if(res .eq. ans) then
     print *,"loop02a : OK"
  else
     print *,"loop02a : NG ",res, ans
  endif

  res=0
!$omp do collapse(3) reduction(+:res)
  do k = ks, get_evalue3(),1
     do j = js, get_evalue3(),1
        do i = is, get_evalue3(),1
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop02b : OK"
  else
     print *,"loop02b : NG ",res, ans
  endif

  res=0
!$omp do collapse(3) reduction(+:res)
  do k = ks, get_evalue1(), kinc
     do j = js, get_evalue2(), jinc
        do i = is, get_evalue3(), iinc
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop02c : OK"
  else
     print *,"loop02c : NG ",res, ans
  endif


  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = get_svalue1(), ke
     do j = get_svalue2(), je, 1
        do i = get_svalue3(), ie, iinc
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop03a : OK"
  else
     print *,"loop03a : NG ",res, ans
  endif

  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = get_svalue3(), ke, kinc
     do j = get_svalue3(), je, jinc
        do i = get_svalue3(), ie, iinc
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop03b : OK"
  else
     print *,"loop03b : NG ",res, ans
  endif

  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = get_svalue3(), get_evalue2(), kinc
     do j = get_svalue1(), get_evalue1(), jinc
        do i = get_svalue2(), get_evalue3(), iinc
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop03c : OK"
  else
     print *,"loop03c : NG ",res, ans
  endif


  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = get_svalue1(), ke, get_ivalue1()
     do j = get_svalue2(), je, get_ivalue2()
        do i = get_svalue3(), ie, get_ivalue3()
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop04a : OK"
  else
     print *,"loop04a : NG ",res, ans
  endif

  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = ks, ke, get_ivalue1()
     do j = js, je, get_ivalue2()
        do i = is, ie, get_ivalue3()
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop04b : OK"
  else
     print *,"loop04b : NG ",res, ans
  endif

  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = ks, ke, get_ivalue3()
     do j = js, je, get_ivalue3()
        do i = is, ie, get_ivalue3()
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop04c : OK"
  else
     print *,"loop04c : NG ",res, ans
  endif

  res = 0
!$omp do collapse(3) reduction(+:res)
  do k = get_svalue1(), ke, get_svalue1()
     do j = get_svalue2(), je, get_svalue2()
        do i = get_svalue3(), ie, get_svalue3()
           res = res+1
        enddo
     end do
  enddo
!$omp end do
  if(res .eq. ans) then
     print *,"loop04d : OK"
  else
     print *,"loop04d : NG ",res, ans
  endif


end subroutine sub01


program main
integer :: mis,mie,miinc,mjs,mje,mjinc
integer :: mks,mke,mkinc

mis=1
mie=10
miinc=1
mjs=1
mje=10
mjinc=1
mks=1
mke=10
mkinc=1

call sub01(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc)

end program main


integer function get_svalue1()
  integer :: a
  a=2
  a=a-1
  get_svalue1 = a
  return 
end function get_svalue1
integer function get_svalue2()
  integer :: a
  a=1
  get_svalue2 = a
  return 
end function get_svalue2
integer function get_svalue3()
  get_svalue3 = 1
  return 
end function get_svalue3

integer function get_evalue1()
  integer :: a
  a=5
  a=a+5
  get_evalue1 = a
  return 
end function get_evalue1
integer function get_evalue2()
  integer :: a
  a=10
  get_evalue2 = a
  return 
end function get_evalue2
integer function get_evalue3()
  get_evalue3 = 10
  return 
end function get_evalue3

integer function get_ivalue1()
  integer :: a
  a=2
  a=a-1
  get_ivalue1 = a
  return 
end function get_ivalue1
integer function get_ivalue2()
  integer :: a
  a=1
  get_ivalue2 = a
  return 
end function get_ivalue2
integer function get_ivalue3()
  get_ivalue3 = 1
  return 
end function get_ivalue3

