program main
  integer,parameter::start=1
  integer,parameter::end=99
  integer,parameter::inc=1
  integer,parameter::init=0
  integer,parameter::term=101
  integer,parameter::step=1

  integer,dimension(init:term,init:term,init:term) :: a
  integer :: zero
  integer(8) :: result_sum,calc_sum
  integer :: t1,t2,t3,rt1,rt2,rt3

  result_sum=74463147
  rt1=99
  rt2=198
  rt3=297

  do k=init,term,step
    do j=init,term,step
      do i=init,term,step
        zero = i*j*k
        if(zero .eq. 0) then
            a(i,j,k) = 1
        else
            a(i,j,k) = min(i,j,k)
        end if
      enddo
    enddo
  enddo

  calc_sum=0
  do k=start,end,inc
    do j=start,end,inc
      do i=start,end,inc
        t1 = a(i+1,j,k)
        t2 = t1 + a(i,j+1,k)
        t3 = t2 + a(i,j,k+1)
        a(i,j,k) = t3
      enddo
    enddo
  enddo

  calc_sum=0
  do k=start,end,inc
    do j=start,end,inc
      do i=start,end,inc
          calc_sum=calc_sum+a(i,j,k)
      enddo
    enddo
  enddo

  if ((rt1 .eq. t1) .and. (rt2 .eq. t2) .and. (rt3 .eq. t3))then
    print *,"<OK>: ","t1=",t1,", ","t2=",t2,", ","t3=",t3
  else
    print *,"<NG>: ","t1=",t1,"(/=",rt1,"), ","t2=",t2,"(/=",rt2,"), ","t3=",t3,"(/=",rt3,")"
  endif
  if (result_sum .eq. calc_sum) then
    print *,"ok: result_sum = calc_sum = ",calc_sum
  else
    print *,"ng: result_sum = ",result_sum
    print *,"    calc_sum = ",calc_sum
  endif

end program

