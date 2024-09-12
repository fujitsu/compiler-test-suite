      program main
       interface
         subroutine sort(data)
          integer,dimension(:),intent(inout) :: data
         end subroutine sort
       end interface
       integer,dimension(:),allocatable ::data
       integer ::n
       write(8,*) 10
       rewind 8
       read(8,*) n
       allocate (data(n))
       write (9,*) 31,55,33,86,21,45,11,43,33,18
       rewind 9
       read(9,*) data
        write (*,*) '* imput data *'
        write(*,'(5i10)') data
       call sort(data)
        write (*,*) '* sort  data *'
        write(*,'(5i10)') data
       print *,'pass'
      end program main
      subroutine sort(a)
       integer,dimension(:),intent(inout) :: a
       integer :: n,i,j,m,w
       intrinsic size
       n=size(a)
       do i=1,n-1
          m=i
          do j=i+1,n
             if (a(j)<a(m)) m=j
          end do
          w=a(i);a(i)=a(m);a(m)=w
       end do
      end subroutine sort
