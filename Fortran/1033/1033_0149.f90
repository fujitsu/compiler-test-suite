      program main
        call s()
        print *,'pass'
      end program main

      subroutine s()
       integer(4),target,dimension(1:20,1:10)::aa
       integer(4),pointer,dimension(:)::pp
       integer(4),target,dimension(1:10)::isum1
       integer(4),target,dimension(1:20)::isum2
       integer(4),pointer::isum_p1
       integer(4),pointer::isum_p2

        do j = 1 , 10
          do i = 1 , 20
            aa(i,j) = i 
          enddo
        enddo
        do j = 1 , 10
          pp=>aa(:,j)
          isum_p1=>isum1(j)
          call ss( pp,isum_p1 )
        enddo
        do i = 1 , 20
          pp=>aa(i,:)
          isum_p2=>isum2(i)
          call ss( pp,isum_p2 )
        enddo
        if ( any( isum1 /= (/(210,i=1,10)/) ) ) print *,'error 1'
        if ( any( isum2 /= (/ 10, 20, 30, 40, 50, 60, 70, 80, 90,100, &
                             110,120,130,140,150,160,170,180,190,200/) ) ) &
                               print *,'error 2'
      contains
        subroutine ss( p,isum_p )
         integer(4),pointer,dimension(:)::p
         integer(4),pointer::isum_p
          isum_p = sum(p)
        end subroutine ss
      end subroutine s
