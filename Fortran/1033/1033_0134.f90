      program main
        call sub()
        print *,'pass'
      end program main

      module m
       integer(4),parameter::n1=20,n2=10
       interface
        subroutine s1(aa,bb,n1,n2)
         integer(4)::aa(:,:)
         integer(4)::bb(*)
         integer(4),intent(in)::n1,n2
        end subroutine s1
        subroutine s2(aa,cc,n1,n2)
         integer(4)::aa(:,:)
         integer(4)::cc(:)
         integer(4),intent(in)::n1,n2
        end subroutine s2
       end interface
      end module 

      subroutine sub()
       use m
       integer(4),dimension(20,10)::aa
       integer(4),dimension(20   )::bb
       integer(4),dimension(   10)::cc
       logical(4),dimension(20   )::ll
       logical(4),dimension(   10)::mm

        do i=1,n2
          call s0(aa(1,i))
        enddo
        bb(:)=0
        cc(:)=0
        call s1(aa,bb,n1,n2)
        call s2(aa,cc,n1,n2)
        call s3(bb,cc)
        call s4(ll,mm)
       contains
        subroutine s3(bb,cc)
         integer(4)::bb(*),cc(*)
          do i=1,n1
            ll(i)=bb(i)==i*10
          enddo
          do i=1,n2
            mm(i)=cc(i)==210_4
          enddo
        end subroutine s3
        subroutine s4(ll,mm)
         logical(4)::ll(:),mm(:)
          if(.not.all(ll)) print *,'error 1'
          if(.not.any(mm)) print *,'error 2'
        end subroutine s4
      end subroutine sub

      subroutine s0(aa)
       integer(4)::aa(*)
        do i=1,20
          aa(i)=i
        enddo
      end subroutine s0

      subroutine s1(aa,bb,n1,n2)
       integer(4)::aa(:,:)
       integer(4)::bb(*)
       integer(4),intent(in)::n1,n2
        do i=1,n1
          do j=1,n2
            bb(i)=bb(i)+aa(i,j) 
          enddo
        enddo
      end subroutine s1

      subroutine s2(aa,cc,n1,n2)
       integer(4)::aa(:,:)
       integer(4)::cc(:)
       integer(4),intent(in)::n1,n2
        do i=1,n1
          do j=1,n2
            cc(j)=cc(j)+aa(i,j) 
          enddo
        enddo
      end subroutine s2
