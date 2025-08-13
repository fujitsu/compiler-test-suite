      program main
       real,dimension(:),allocatable :: x,y
       real :: a,b
       integer :: i,n
       external leastsqr
       write (16,*) 5
       rewind 16
       read(16,*) n
       allocate(x(n),y(n))
       write (11,*) 1.,1.
       write (12,*) 3.,3.2
       write (13,*) 2.1,2.0
       write (14,*) 1.9,1.9
       write (15,*) 5.,5.
       do i=1,n
          rewind i+10
          read(i+10,*) x(i),y(i)
       end do
       call leastsqr(n,x,y,a,b)
       write(*,'(f16.4,f16.4)') a,b
       deallocate(x,y)
       print *,'pass'
      end program main

      subroutine leastsqr(n,x,y,a,b)
       integer,intent(in) ::n
       real,dimension(n),intent(in) :: x,y
       real,intent(out) :: a,b
       real :: s1,s2,s3,s4,xave,yave
       intrinsic sum
       s1=SUM(x)
       s2=sum(y)
       xave=s1/n
       yave=s2/n
       s3=sum((x-xave)*(y-yave))
       s4=sum((x-xave)*(x-xave))
       a=s3/s4
       b=yave-a*xave
      end subroutine leastsqr
