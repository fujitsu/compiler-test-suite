INTEGER :: c,age=23
CHARACTER(8) :: dd,name='xyzz',birth='9jun'

character(10) :: ifn

associate(aa=>ifn)
      WRITE (aa, 10) name, age, birth
10    FORMAT (A4, I2, A4)

read(aa,10) dd(1:4),c,dd(5:8)
end associate

if(c==23 .and. dd =='xyzz9jun')print*,'pass'
END
