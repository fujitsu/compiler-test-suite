      program main
       integer::aa(5)
       integer::bb(5)
        aa(:)=(/1,2,3,4,5/)
        bb(:)=(/4,3,2,1,0/)
        aa = aa + bb
        if (any(aa/=(/5,5,5,5,5/))) print *,'error'
        print *,'pass'
      end program main
