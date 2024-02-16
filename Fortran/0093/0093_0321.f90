complex :: cc(4)
integer :: I
        cc%re = [1,2,3,4]
        cc%im = [5,6,7,8]
        do concurrent (I=1:4,cc(I)%re > 3 .AND. cc(I)%im > 6)
          cc(I) = (9,10)
        end do
        if(cc(4) .ne. (9,10)) print*,"121"
print*,"Pass"
end
