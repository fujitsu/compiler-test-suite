      program main
       integer(4)::aa(10,10)
       interface
        recursive subroutine ss1(j,aa)
          integer(4)::aa(:,:)
        end subroutine ss1
       end interface
        j=0
        call ss1(j,aa)
        do i=1,10
          if (aa(i,i)/=i) print *,'error'
        enddo
        print *,'pass'
      end

      recursive subroutine ss1(j,aa)
       integer(4)::aa(:,:)
       interface
        subroutine ss2(j,aa)
          integer(4)::aa(:,:)
        end subroutine ss2
       end interface
        j=j+1
        if (j>10) then
          return
        endif
        call ss2(j,aa)
      end subroutine

      recursive subroutine ss2(j,aa)
       integer(4)::aa(:,:)
       interface
        recursive subroutine ss1(j,aa)
          integer(4)::aa(:,:)
        end subroutine ss1
       end interface
        aa(j,j)=j
        call ss1(j,aa)
      end subroutine
