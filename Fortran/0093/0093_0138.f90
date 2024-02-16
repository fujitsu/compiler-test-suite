complex,pointer::cmp(:)
complex,target::tgt(3)
cmp => tgt
tgt = [(1,2),(3,4),(5,6)]

goto (1,4,3,5,6,2),int(tgt(2)%im) 
  5 if(int(tgt(1)%re)  .ne. 1) print*,"101"
      goto 99
  6 if(int(tgt(1)%im)  .ne. 2) print*,"102"
      goto 99
  3 if(int(tgt(2)%re)  .ne. 3) print*,"103"
      goto 99
  4 if(int(tgt(2)%im)  .ne. 5) print*,"102"
     print*,"error1"
      goto 99
  2 if(int(tgt(3)%re)  .ne. 5) print*,"102"
      goto 99
  1 if(int(tgt(3)%im)  .ne. 6) print*,"102"
      goto 99
  99 print*, "pass"
end
