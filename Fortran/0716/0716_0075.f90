integer,parameter    :: ip01 = 3
character (len=5)    :: chl5
character (len=ip01) :: chp3

print *,(/character(*):: '111'/) 

print *,(/(/(/(/(/(/(/(/(/(/(/(/(/(/(/(/(/character(*):: '111'/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)/)

print *,[[character (len=len(chl5(1:3))) :: 'abcde'],[character(len=len(chp3)) :: 'xyz']]

print *,[character(len=len([character(len=1) :: 'abc', 'def'])) :: '12345']

print *,[[character(len=len([character(len=1) :: 'a', 'b'])) :: '12345'],[character :: 'abc','def']]

end
