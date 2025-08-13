      program main
       integer,dimension(:),allocatable ::data
       integer :: n
       external quicksort
       write (85,*) 5
       rewind 85
       read (85,*) n
       allocate(data(n))
       write (86,*) 9,7,3,5,1
       rewind 86
       read (86,*)  data
       write(*,*) 'input data'
       write (*,'(5i10)') data
       call quicksort(n,data,1,n)
       write(*,*) 'sort  data'
       write (*,'(5i10)') data
       print *,'pass'
      end program main
      recursive subroutine quicksort(n,x,l,r)
       integer,intent(in) :: n,l,r
       integer,dimension(n),intent(inout) :: x
       integer :: c,ls,i
       if (l<r) then
           c= (l+r)/2
           call swap(x(l),x(c))
           ls=l
           do i=l+1,r
              if (x(i)< x(l)) then
                 ls=ls+1
                 call swap(x(ls),x(i))
              end if
           end do
           call swap(x(ls),x(l))
           call quicksort(n,x,l,ls-1)
           call quicksort(n,x,ls+1,r)
       end if
       contains
       subroutine swap(a,b)
        integer,intent(inout) :: a,b
        integer :: w
        w=a;a=b;b=w
       end subroutine swap
      end subroutine quicksort
