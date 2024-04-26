 subroutine s1
 integer::a(2)
  a= [( k,k=1,2) ]
  call ss
 contains
 subroutine ss
    do k=1,2
    end do
    if (k/=3)print *,101
    write(1,'(z16.16)') loc(k)
 end subroutine
end

 subroutine chk
  character(16)::addr(100)
  rewind 1
  n=1
  do     
    read(1,'(a)',end=100) addr(n)
    n=n+1
    if (n>=99) exit
  end do
100 continue
n=n-1
  do n1=1,n
    do n2=n1+1,n
       if (addr(n1)==addr(n2)) print *,n1,n2,addr(n1),' ',addr(n2)
    end do
  end do
  end subroutine

!$omp parallel
call s1
!$omp end parallel
call chk
print *,'pass'
end
