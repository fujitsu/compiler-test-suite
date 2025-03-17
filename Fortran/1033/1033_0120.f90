      program main
       integer(kind=4)::aa(5)
        call s(aa,5)
        close(15,status='delete')
      end
      subroutine s(aa,n)
       integer(4),intent(in)::n
       integer*4 aa(n)
       namelist /nl/ aa
        aa=(/1,2,3,4,5/)
        write(15,nl)
        rewind(15)
        aa=777   
        read(15,nl)
        if (any(aa/=(/1,2,3,4,5/))) print *,'error-2',aa
        print *,'pass'
      end
