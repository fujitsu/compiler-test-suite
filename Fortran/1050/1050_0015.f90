
program main
  integer :: i,j,k,l,m,n
  integer :: nl,nu,ns
  integer :: ml,mu,ms
  integer :: ll,lu,ls
  integer :: kl,ku,ks
  integer :: jl,ju,js
  integer :: il,iu,is
  real :: result1,result2,result3
  real,dimension(10,10,10,10,10,10) :: aa
  real,dimension(10,10,10,10,10,10) :: bb
  real,dimension(10,10,10,10,10,10) :: cc

  result1=0
  result2=0
  result3=0
  nl=1
  ml=1
  ll=1
  kl=1
  jl=1
  il=1
  
  nu=10
  mu=10
  lu=10
  ku=10
  ju=10
  iu=10
  
  ns=1
  ms=1
  ls=1
  ks=1
  js=1
  is=1
  
  
  

!$omp do collapse(4)
  do n = nl, nu, ns
     do m = ml, mu, ms
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    aa(i,j,k,l,m,n)=i+j+k+l+m+n
                 end do
              end do
           end do
        end do
     end do
  end do
  

  do n = nl, nu, ns
!$omp do collapse(4)
     do m = ml, mu, ms
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    bb(i,j,k,l,m,n)=i+j+k+l+m+n
                 end do
              end do
           end do
        end do
     end do
  end do
  
  do n = nl, nu, ns
     do m = ml, mu, ms
!$omp do collapse(4)
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    cc(i,j,k,l,m,n)=i+j+k+l+m+n
                 end do
              end do
           end do
        end do
     end do
  end do
  
  do n = nl, nu, ns
     do m = ml, mu, ms
        do l = ll, lu, ls
           do k = kl, ku, ks
              do j = jl, ju, js
                 do i = il, iu, is
                    result1 = result1 + aa(i,j,k,l,m,n)
                    result2 = result2 + bb(i,j,k,l,m,n)
                    result3 = result3 + cc(i,j,k,l,m,n)
                 end do
              end do
           end do
        end do
     end do
  end do

  if(abs(result2 - result1) > 1.0E+4) then
     print *,"ng",result1,result2,result3
  else if(abs(result3 - result1) > 1.0E+4) then
     print *,"ng",result1,result2,result3
  else
     print *,"ok"
  end if

end program main
