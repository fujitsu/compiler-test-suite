subroutine mkms1(m1,m2,m3,m4,m5,m6,m7,r4a1,r4a2,r4a3)
  integer m1,m2,m3,m4,m5,m6,m7
  real*4 r4s6,r4a2(1:m1,1:m2),r4a1(1:m1),r4a3(1:m1,1:m2)
  real*4 result(100)
  integer flag

  data result/4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000,&
              4.00000000,6.00000000,8.00000000,10.0000000,12.0000000,&
              14.0000000,16.0000000,18.0000000,20.0000000,22.0000000/
  do  i4=1,m4
     do  i5=1,m5
        do  i6=1,m6
           r4s6=r4a1(i6)*2.0
           do  i7=1,m7
              r4a2(i4,i6)= r4s6
           enddo
              r4a3(i4,i5)=r4s6
        enddo
     enddo
  enddo
  i1 = 1
  flag = 1
  do  k1 =1,m1
    do  k2 = 1,m2
      if(r4a2(k1,k2) /= result(i1)) flag = 0
      i1 = i1+1
    enddo
  enddo
  if (flag == 1) then
    print *, "OK1"
  else
    print *,"NG1"
  endif
  i1 = 1
  do  k1 =1,m1
    do  k2 = 1,m2
      if(r4a3(k1,k2) /= 22.0000000) flag = 0
      i1 = i1+1
    enddo
  enddo
  if (flag == 1) then
    print *, "OK2"
  else
    print *,"NG2"
  endif
  return
end

  real*4 r4a2(1:10,1:10),r4a1(1:10),r4a3(1:10,1:10)
  do i1 = 1,10
     r4a1(i1) = i1+1
    do i2 = 1,10
      r4a2(i2,i1) = i1*i2
      r4a3(i2,i1) = i1+i2
    enddo
  enddo
  call mkms1(10,10,10,10,10,10,10,r4a1,r4a2,r4a3)
end
