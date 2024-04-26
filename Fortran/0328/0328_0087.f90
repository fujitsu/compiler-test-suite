       integer ia(512)
       ia = 2
       call sub2(ia)
       end
       subroutine sub2(ia)
       integer, intent(out) :: ia(*)
       call sub1(ia)
       end
       subroutine sub1(ia)
       integer ia(*),ii(512)
       do i=1,512
         ii(i) = ia(i)
         ii(i) = ii(i)+1
       enddo
       print *,'pass'
       end
