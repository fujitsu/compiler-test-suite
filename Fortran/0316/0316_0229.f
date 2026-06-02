       integer*4 one(64),s1(64),s2(64),res1(64),res2(64)
       integer*4 s11(64),s22(64)
       parameter (one=(/ (i/i,i=1,64) /) )
       parameter (s1=(/ (i,i=1,64) /) )
       parameter (s11=(/ (j,j=1,31),(j,j=0,31),0 /))
       parameter (s2=(/ (i,i=-1,-64,-1) /) )
       parameter (s22=(/31,30,29,28,27,26,25,24,23,22,21,20,19,18,
     +                 17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,
     +                 31,30,29,28,27,26,25,24,23,22,21,20,19,18,
     +                 17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0/))
       parameter (res1=LSHIFT(one,s11))
       parameter (res2=LSHIFT(one,s22))

       do  i=1 ,64
         write(6,1) s1(i), res1(i), s2(i), res2(i)
       end do
    1  format(' i=',I4,' ',z8,'   i=',I4,' ',z8)
       end
