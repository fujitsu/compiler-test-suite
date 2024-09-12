      program main
       integer,dimension(10) ::sk=(/53,71,82,61,34,55,81,77,44,91/)
       integer :: max,min,s
       real ave
       intrinsic maxval,minval,sum,real,size
       max=maxval(sk)
       min=minval(sk)
       s=sum(sk)
       ave=real(s)/size(sk)
       write(*,*) max,min,s,ave
       where (sk>=60)
        sk=sk+5
       elsewhere
        sk=sk-10
       end where
       write(*,'(10i4)') sk
       print *,'pass'
      end program main
