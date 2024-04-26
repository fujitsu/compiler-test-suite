       character a(5)
       integer   i(5)
       parameter(i=(/47,48,64,92,61/))
       parameter(a=char(i,1) )
       print *,i,a
       end
