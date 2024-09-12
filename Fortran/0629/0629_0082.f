        integer*4 s123456789s123456789s123456789s123459789/0/
        integer*4 s/0/
        integer*4 a(10)/1,2,3,4,5,6,7,8,9,10/
        integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
        integer*4 res/55/
        do 10 i=1,10
          s = s + b(i)
          s123456789s123456789s123456789s123459789 = 
     +    s123456789s123456789s123456789s123459789 + a(i)
 10     continue
        if (s123456789s123456789s123456789s123459789.eq.res) then
          write(6,*) 'OK'
        else
          write(6,*) 'NG'
          write(6,*) 's = ',s123456789s123456789s123456789s123459789
          write(6,*) 'res = ',res
        endif
        if (s.eq.res) then
          write(6,*) 'OK'
        else
          write(6,*) 'NG'
          write(6,*) 's = ',s
          write(6,*) 'res = ',res
        endif
        stop
        end
