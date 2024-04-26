subroutine sub(a,b,c,cond,val)
  real,dimension(100) :: a,b,c
  integer ::cond,val
  integer :: i
  integer :: tmp1,tmp2,tmp3,tmp4,tmp5,tmp6
  tmp6=77
  do i=1,100
     b(i) = 1+i
     b(i) = b(i)*2
     b(i) = b(i)+1
     b(i) = b(i)/2
     b(i) = b(i)-2
     b(i) = b(i)+b(i)

     if (cond > 50) then
        tmp1 = val+1*5
        tmp2 = val*2*2
        tmp3 = val+val*3
        tmp4 = val*2*2
        tmp5 = val*val
        tmp6 = tmp1+tmp2+tmp3+tmp4+tmp5
     end if

     a(i) = a(i)*2
     a(i) = a(i)+1
     a(i) = a(i)/2
     a(i) = a(i)-2
     a(i) = a(i)+a(i)
  end do  
  
  c(1) = tmp6
end subroutine sub




program main
  real,dimension(100) :: a,b,c
  integer :: k
  k=1
  a=2
  b=1
  c=3
  call sub(a,b,c,k,10)
  print *,sum(a),sum(b),sum(c)
end program main
