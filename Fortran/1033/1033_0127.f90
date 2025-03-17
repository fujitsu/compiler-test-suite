      program main
       interface
        subroutine s1(pp,qq)
         integer(4),pointer,dimension(:)::pp,qq
        end subroutine s1
        subroutine s2(pp,qq,ll)
         integer(4),pointer,dimension(:)::pp,qq
         logical(4),dimension(5)::ll
        end subroutine s2
       end interface

       integer(4),pointer,dimension(:)::pp,qq
       logical(4),dimension(5)::ll

        call s1(pp,qq)
        call s2(pp,qq,ll)
        if (any(ll)) print *,'error ',ll
        print *,'pass'
      end program main

      subroutine s1(pp,qq)
       integer(4),pointer,dimension(:)::pp,qq
       integer(4),target,save,dimension(5)::aa
       integer(4),target     ,dimension(5)::bb

        aa=(/1,2,3,4,5/)
        bb=(/6,5,4,3,2/)
        allocate(qq(5))
        pp=>aa
        qq=bb
      end subroutine s1

      subroutine s2(pp,qq,ll)
       integer(4),pointer,dimension(:)::pp,qq
       logical(4),dimension(5)::ll
       integer(4),dimension(5)::zz

        zz=pp+qq
        ll(1) = zz(1) .ne. 7
        ll(2) = zz(2) .ne. 7
        ll(3) = zz(3) .ne. 7
        ll(4) = zz(4) .ne. 7
        ll(5) = zz(5) .ne. 7
      end subroutine s2
