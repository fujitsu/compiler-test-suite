      program main
       i1=1 ; i2=10
       j1=1 ; j2=2 ; j3=1 ; j4=5
        call sub(i1,i2,j1,j2,j3,j4)
        print *,'pass'
      end program main

      subroutine sub(i1,i2,j1,j2,j3,j4)
       integer(8)::i(2)
       integer(8)::j(4)
       integer(4),dimension(10)::aa,bb
       integer(4),dimension(2,5)::cc
        i(1)=i1
        i(2)=i2
        j(:)=(/j1,j2,j3,j4/)
        aa=(/(k,k=1,10)/)
        bb=(/(1,k=1,5),(2,l=6,10)/)
        cc=reshape( (/(k,k,k=1,5)/),(/2,5/) )
        call s0()
        call s1()
        call s2()
       contains
         subroutine s0()
           if (any(aa             /=(/1,2,3,4,5,6,7,8,9,10/))) print *,'error 1'
           if (any(bb             /=(/1,1,1,1,1,2,2,2,2,2/))) print *,'error 2'
           if (any(pack(cc,.true.)/=(/1,1,2,2,3,3,4,4,5,5/))) print *,'error 3'
         end subroutine s0
         subroutine s1()
           aa=aa(i(1):i(2))+bb(i(1):i(2))+pack(cc(j(1):j(2),j(3):j(4)),mask=.true.)
           cc=cc(j(1):j(2),j(3):j(4))+reshape(bb(i(1):i(2)),(/2,5/))
         end subroutine s1
         subroutine s2()
           if (any(aa/=(/3,4,6,7,9,11,13,14,16,17/))) print *,'error 4'
           if (any(cc/=reshape((/2,2,3,3,4,5,6,6,7,7/),(/2,5/)))) print *,'error 5'
         end subroutine s2
      end subroutine sub
