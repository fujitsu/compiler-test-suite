  integer,parameter::i=4

       character(kind=4),parameter::a*2=min(i_"1",i_"11",i_"22")

       integer :: k = kind(min(4_"1",i_"11",i_"22"))


       if(a/= min(i_"1",i_"11",i_"22")) print *,'101'
       if(k/= kind(min(4_"1",i_"11",i_"22")))  print *,'102'

       print *,'PASS'

       end
