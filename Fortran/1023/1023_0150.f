1      character*10 y(8)
2      rc = sub(x,y,8)
3      end

5      function sub(a,c,i)
6      real a,b(5)
7      character*10 c(i)
8      sub=0
9      a=1
10     b(1) = 2
11     c(i)='**********'
12     print *,a


15     end
