complex,pointer::cmp(:)
complex,target::tgt(3)
cmp => tgt
tgt = [(3.45,4.45),(5.45,2.45),(7.45,8.45)]

goto (5,6,7),int(tgt(2)%im) 
  5 if(int(tgt(2)%im)  .ne. 4) print*,"101"
      goto 99
  6 if(int(tgt(2)%im)  .ne. 2) print*,"102"
      goto 99

  7 if(int(tgt(3)%im)  .ne. 8) print*,"103"
  99 print*, "pass"
end
