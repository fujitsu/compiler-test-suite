INTEGER :: roll=20, class=05
CHARACTER(12) :: database = 'RollNo Class'

associate(aa=>'QUOTE')
 OPEN(1,file='ABC080.DATA142')
 WRITE(1,*,delim=aa) roll,database(1:6) ,class,database(7:11) 
end associate
close (1,status='delete')

print*,'pass'
END
