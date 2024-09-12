program main
  integer,parameter::begin=1
  integer,parameter::end=10
  integer,parameter::inc=1
  integer,parameter::init=0
  integer,parameter::term=12
  integer,parameter::step=1

  real*8,dimension(init:term,init:term,init:term) :: a
  real*8 :: zero
  real*8 :: result_sum,calc_sum,t1,t2,t3,rt1,rt2,rt3
  real*8,parameter :: DIFF=1.0d-5

  result_sum=99.3000000000000000
  rt1=0.1000000000000000
  rt2=0.2000000000000000
  rt3=0.3000000000000000

  do k=init,term,step
    do j=init,term,step
      do i=init,term,step
        zero = i*j*k
        if(zero .eq. 0) then
            a(i,j,k) = 1.00000D-2
        else
            a(i,j,k) = min(i,j,k) * 1.00000D-2
        end if
      enddo
    enddo
  enddo

  calc_sum=0
  do k=begin,end,inc
    do j=begin,end,inc
      do i=begin,end,inc
        t1 = a(i+1,j,k)
        t2 = t1 + a(i,j+1,k)
        t3 = t2 + a(i,j,k+1)
        a(i,j,k) = t3
      enddo
    enddo
  enddo

  calc_sum=0
  do k=begin,end,inc
    do j=begin,end,inc
      do i=begin,end,inc
          calc_sum=calc_sum+a(i,j,k)
      enddo
    enddo
  enddo

  if (abs(real(result_sum-calc_sum)) .le. DIFF) then
    print *,"ok"
  else
    print *,"ng: result_sum = ",result_sum
    print *,"    calc_sum = ",calc_sum
  endif

end program
