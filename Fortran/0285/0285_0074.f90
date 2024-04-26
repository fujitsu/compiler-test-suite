integer::x

OPEN(10,access='stream',form='formatted')

WRITE(10,fmt='(I)') 27

associate(aa=>1,bb=>'zero')
 READ(10,pos=aa,round=bb,fmt='(I)') x
end associate

if(x==27) print*,'pass'
END
