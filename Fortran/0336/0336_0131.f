

       program  snrt11
       integer i,labl1,labl2,labl3,labl4,sum,addrs
       equivalence (labl1,labl2,labl3,labl4)
       sum = 0
       do 10 i=1,100
              sum = sum + i
   10  continue
       if(sum .lt. 200) then
            assign 20 to labl1
       else if(sum .gt. 200) then
            assign 30 to labl2
       else if(sum .eq. 200) then
            assign 40 to labl3
       end if
   20  sum = sum**2
       adrs = labl1
       write(6,*) 'test ==> ok'
       stop
   30  sum = sum/i
       adrs = labl2
       write(6,*) 'test ==> ok'
       stop
   40  sum = 100
       adrs = labl3
       write(6,*) 'test ==> ok'
       stop
       end
