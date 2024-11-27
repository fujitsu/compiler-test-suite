character :: ch_01(3),ch_02(30)

ch_01 = (/              '1',  '1' , '1'  /)
ch_01 = (/              '1',  '12', '123'/) 
ch_01 = (/character ::  '1',  '1' , '1'  /)
ch_01 = (/character ::  '1',  '12', '123'/)

ch_02 = (/             ('1', '1' , '1'  , i = 1, 10)/)
ch_02 = (/character :: ('1', '1' , '1'  , i = 1, 10)/)
ch_02 = (/character :: ('1', '12', '123', i = 1, 10)/)

ch_01 = (/              '1', merge('1' , '2' , .true.), '1'  /)
ch_01 = (/              '1', merge('12', '34', .true.), '123'/) 
ch_01 = (/character ::  '1', merge('1' , '3' , .true.), '1'  /)
ch_01 = (/character ::  '1', merge('12', '34', .true.), '123'/)

ch_02 = (/             ('1', merge('1' , '2' , .true.), '1'  , i = 1, 10)/)
ch_02 = (/character :: ('1', merge('1' , '2' , .true.), '1'  , i = 1, 10)/)
ch_02 = (/character :: ('1', merge('12', '34', .true.), '123', i = 1, 10)/)

end
