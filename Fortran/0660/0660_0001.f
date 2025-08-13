      program main
       integer,dimension(100) :: p
       integer :: n,k,num
       intrinsic mod
       write(1,*) 300
       rewind 1
       read (1,*) n
       p(1)=2; p(2)=3
       k=2
       lp:do num=5,n,2
          do i=2,k
            m=mod(num,p(i))
            if (m==0) cycle lp
          end do
          k=k+1
          p(k)=num
       end do lp
       write (*,*) 'num=',k
       write (*,'(10i5)') p(1:k)
       print *,'pass'
      end program main
