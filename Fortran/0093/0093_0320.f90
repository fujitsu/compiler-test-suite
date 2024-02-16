complex :: cc(4)
        cc%re = [1,2,3,4]
        cc%im = [7,8,5,6]
block
complex :: cc(4) = (1,2)
        cc(1:4:2)%re = [5,6]
        cc(1:4:2)%im = [12,13]
if(any(cc(1:4:2)%re .ne. [5,6])) print*,"121"
if(any(cc(1:4:2)%im .ne. [12,13])) print*,"122"
end block
if(any(cc%re .ne. [1,2,3,4])) print*,"221"
if(any(cc%im .ne. [7,8,5,6])) print*,"222"
print*,"Pass"
end
