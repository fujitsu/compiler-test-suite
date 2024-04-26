 real(kind=8)::sum1=0.0d0,sum2=0.0d0
  call s1(1,sum1,sum2)
  print *,'pass'
end

subroutine s1(k,sum1,sum2)
 interface
  subroutine sum_pointer(array,n1,n2,sum)
    real(kind=8), allocatable :: array(:,:)
    real(kind=8) :: sum
  end subroutine sum_pointer
  subroutine sum_array(array,n1,n2,sum)
    real(kind=8) :: array(n1,n2)
    real(kind=8) :: sum
  end subroutine sum_array
 end interface
 real(kind=8), dimension(:,:),allocatable::array
 real(kind=8)::sum1,sum2

   n1=5
   n2=1
   allocate(array(n1,n2))
   array=reshape((/(dble(i),i=1,n1*n2)/),(/n1,n2/))
   do i=1,k
     call sum_array  (array,n1,n2,sum1)
     call sum_pointer(array,n1,n2,sum2)
   end do
   if (sum1/=1.50d1) print *,'error',sum1
   if (sum2/=1.50d1) print *,'error',sum2
end

module mod0
 contains
  subroutine sum_proc(array,n1,n2,i,j,sum)
   real(kind=8) :: array(n1,n2)
   real(kind=8) :: sum
    do j=1,n2
      sum=sum+array(i,j)
    end do
  end subroutine
end module

module mod1
 contains
  subroutine sum_proc(array,n1,n2,i,j,sum)
   real(kind=8),allocatable :: array(:,:)
   real(kind=8) :: sum
    do j=1,n2
      sum=sum+array(i,j)
    end do
  end subroutine
end module

subroutine sum_array(array,n1,n2,sum)
 use mod0
 real(kind=8) :: array(n1,n2)
 real(kind=8) :: sum
  do i=1,n1
    call sum_proc(array,n1,n2,i,j,sum)
  end do
end subroutine sum_array

subroutine sum_pointer(array,n1,n2,sum)
 use mod1
 real(kind=8), allocatable :: array(:,:)
 real(kind=8) :: sum
  do i= 1,n1
    call sum_proc(array,n1,n2,i,j,sum)
  end do
end subroutine sum_pointer

