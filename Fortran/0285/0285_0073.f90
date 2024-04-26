integer::x

OPEN(10,form='unformatted',access='stream')

WRITE(10) 2

associate(aa=>1)
READ(10,pos=aa) x
end associate

if(x==2) print*,'pass'
END
