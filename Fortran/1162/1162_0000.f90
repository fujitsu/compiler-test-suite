subroutine s1
integer,parameter :: isss(1,2)=3
                  associate (src =>isss(1,2))
                 k=src
                  block
                    !real :: cSum(src)
                  end block
                 end associate
end
call s1
call s2
         print *,'sngg007o : pass'
end
subroutine s2
integer :: isss(1,2)=3
                  associate (src =>isss(1,2))
                 k=src
                  block
                    !real :: cSum(src)
                  end block
                 end associate
end

