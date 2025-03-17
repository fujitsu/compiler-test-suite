
program main
  integer :: i,j,k,l,m,n
  integer :: nl,nu,ns
  integer :: ml,mu,ms
  integer :: ll,lu,ls
  integer :: kl,ku,ks
  integer :: jl,ju,js
  integer :: il,iu,is
  integer,parameter :: ans=1000000
  integer :: res1,res2,res3,res4
  integer :: flag

  res1=0
  res2=0
  res3=0
  res4=0
  flag = 0

  nl=10
  ml=11
  ll=10
  kl=12
  jl=10
  il=11
  
  nu=1
  mu=2
  lu=1
  ku=3
  ju=1
  iu=2
  
  ns=-1
  ms=-1
  ls=-1
  ks=-1
  js=-1
  is=-1
  
  
  
!$omp parallel
!$omp do collapse(4) reduction(+:res1)
  do n = nl, nu, ns
     do m = ml, mu, ms
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    res1 = res1 +1
                 end do
              end do
           end do
        end do
     end do
  end do
!$omp end parallel  


!$omp parallel
!$omp do collapse(4) reduction(+:res2)
  do n = nl, nu, ns
     do m = ml, mu, ms
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    res2 = res2 +1
                 end do
              end do
           end do
        end do
     end do
  end do
!$omp end parallel  


  do n = nl, nu, ns
!$omp parallel
!$omp do collapse(4) reduction(+:res3)
     do m = ml, mu, ms
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    res3 = res3 +1
                 end do
              end do
           end do
        end do
     end do
!$omp end parallel
  end do

  
  do n = nl, nu, ns
     do m = ml, mu, ms
!$omp parallel
!$omp do collapse(4) reduction(+:res4)
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    res4 = res4 +1
                 end do
              end do
           end do
        end do
!$omp end parallel
     end do
  end do
  
  if(res1 .ne. res2) then
     flag = 1
  end if
  if (res2 .ne. res3) then
     flag = 2
  end if
  if (res3 .ne. res4) then
     flag = 4
  end if
  if (res4 .ne. ans) then
     flag = 8
  end if


  if(flag .eq. 0) then
     print *,"OK"
  else
     print *,"NG",flag,res1,res2,res3,res4
  endif

end program main
