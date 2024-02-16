complex :: cc(4)
integer :: I
        cc%re = [1,2,3,4]
        cc%im = [5,6,7,8]
        forall(I=1:4,cc(I)%re > 3 .AND. cc(I)%im > 6)
          cc(3:I) = [(9,10),(11,12)]
        end forall
        if(cc(3) .ne. (9,10)) print*,"121"
        if(cc(4) .ne. (11,12)) print*,"122"
print*,"Pass"
end
