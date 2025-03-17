      program main
        j=0
        call ss1(j)
        print *,'pass'
      end

      recursive subroutine ss1(j)
       integer(4)::aa(100,5)
       interface
        subroutine ss2(j,aa)
          integer(4)::aa(:,:)
        end subroutine ss2
       end interface
        j=j+1
        if (j>5) then
          return
        endif
        call ss2(j,aa)
      end subroutine

      recursive subroutine ss2(j,aa)
       integer(4)::aa(:,:)
        aa(:,j)=j
        call ss1(j)
      end subroutine
