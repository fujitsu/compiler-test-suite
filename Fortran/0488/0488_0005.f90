   integer,parameter::i=1
    character(kind=1),parameter::a*2=min(i_"00",i_"11",i_"22")
    character(kind=1,len=2)::aa='00'
      integer :: k = kind(min(i_"1",i_"11",i_"22"))
        if(a/= min(aa  ,i_"11",i_"22")) print *,'105'
        if(a/= min(i_"00",i_"11",i_"22")) print *,'103'
        if(a/= min(i_"00",i_"11",i_"22")) print *,'102'
        if(a/= min(i_"00",i_"11",i_"22")) print *,'101'
        if(k/= kind(min(i_"1",i_"11",i_"22")))  print *,'104'
        print *,'pass'
     end
