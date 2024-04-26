INTEGER :: roll=20, class=05
CHARACTER(12) :: database = 'RollNo Class'

associate(aa=>'QUOTE')
 OPEN(1,DELIM=aa)
 WRITE(1,*) roll,database(1:6) ,class,database(7:11) 
end associate

print*,'pass'
END
