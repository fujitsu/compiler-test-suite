      real a(10,10,10),b(10,10,10)
      a=1
      b=1
      l=1
      m=2
      n=10
      do 10 i=l,10,2
      do 10 j=2,10,1
      do 10 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
10     continue
      do 20 i=1,10,2
      do 20 j=m,10,1
      do 20 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
20     continue
      do 30 i=1,10,2
      do 30 j=2,10,1
      do 30 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
30     continue
      do 40 i=1,n,2
      do 40 j=2,10,1
      do 40 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
40     continue
      do 50 i=1,10,2
      do 50 j=2,n,1
      do 50 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
50     continue
      print *,a
      do 60 i=1,10,2
      do 60 j=2,10,1
      do 60 k=1,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
60     continue
      do 70 i=1,10,m
      do 70 j=2,10,1
      do 70 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
70     continue
      do 80 i=1,10,2
      do 80 j=2,10,l
      do 80 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
80     continue
      do 90 i=1,10,2
      do 90 j=2,10,1
      do 90 k=1,10,m
        a(i,j,k) = a(i,j,k) + b(i,j,k)
90     continue
      do 100 i=l,n,2
      do 100 j=2,10,1
      do 100 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
100     continue
      do 110 i=l,10,2
      do 110 j=2,n,1
      do 110 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
110     continue
      do 120 i=l,10,2
      do 120 j=2,10,1
      do 120 k=1,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
120     continue
      do 130 i=l,10,m
      do 130 j=2,10,1
      do 130 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
130     continue
      do 140 i=l,10,2
      do 140 j=2,10,l
      do 140 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
140     continue
      do 150 i=l,10,2
      do 150 j=2,10,1
      do 150 k=1,10,m
        a(i,j,k) = a(i,j,k) + b(i,j,k)
150     continue
      do 160 i=1,n,2
      do 160 j=m,10,1
      do 160 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
160     continue
      do 170 i=1,10,2
      do 170 j=m,n,1
      do 170 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
170     continue
      do 180 i=1,10,2
      do 180 j=m,10,1
      do 180 k=1,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
180     continue
      do 190 i=1,10,m
      do 190 j=m,10,1
      do 190 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
190     continue
      do 200 i=1,10,2
      do 200 j=m,10,l
      do 200 k=1,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
200     continue
      do 210 i=1,10,2
      do 210 j=m,10,1
      do 210 k=1,10,m
        a(i,j,k) = a(i,j,k) + b(i,j,k)
210     continue
      do 220 i=1,n,2
      do 220 j=2,10,1
      do 220 k=l,10,1
        a(i,j,k) = a(i,j,k) + b(i,j,k)
220     continue
      do 230 i=1,10,2
      do 230 j=2,n,1
      do 230 k=l,10,1
        a(i,j,k) = a(i,j,k) + b(i,j,k)
230     continue
      do 240 i=1,10,2
      do 240 j=2,10,1
      do 240 k=l,n,1
        a(i,j,k) = a(i,j,k) + b(i,j,k)
240     continue
      do 250 i=1,10,m
      do 250 j=2,10,1
      do 250 k=l,10,1
        a(i,j,k) = a(i,j,k) + b(i,j,k)
250     continue
      do 260 i=1,10,2
      do 260 j=2,10,l
      do 260 k=l,10,1
        a(i,j,k) = a(i,j,k) + b(i,j,k)
260     continue
      do 270 i=1,10,2
      do 270 j=2,10,1
      do 270 k=l,10,m
        a(i,j,k) = a(i,j,k) + b(i,j,k)
270     continue
      do 280 i=l,10,2
      do 280 j=m,10,1
      do 280 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
280     continue
      do 290 i=l,n,2
      do 290 j=m,10,1
      do 290 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
290     continue
      do 300 i=l,10,2
      do 300 j=m,n,1
      do 300 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
300     continue
      do 310 i=l,10,2
      do 310 j=m,10,1
      do 310 k=l,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
310     continue
      do 320 i=l,10,m
      do 320 j=m,10,1
      do 320 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
320     continue
      do 330 i=l,10,2
      do 330 j=m,10,l
      do 330 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
330     continue
      do 340 i=l,10,2
      do 340 j=m,10,1
      do 340 k=l,10,m
        a(i,j,k) = a(i,j,k) + b(i,j,k)
340     continue
      do 350 i=l,n,2
      do 350 j=m,10,1
      do 350 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
350     continue
      do 360 i=l,n,2
      do 360 j=m,n,1
      do 360 k=l,10,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
360     continue
      do 370 i=l,n,2
      do 370 j=m,n,1
      do 370 k=l,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
370     continue
      do 380 i=l,n,m
      do 380 j=m,n,1
      do 380 k=l,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
380     continue
      do 390 i=l,n,m
      do 390 j=m,n,l
      do 390 k=l,n,2
        a(i,j,k) = a(i,j,k) + b(i,j,k)
390     continue
      do 400 i=l,n,m
      do 400 j=m,n,l
      do 400 k=l,n,m
        a(i,j,k) = a(i,j,k) + b(i,j,k)
400     continue
      end
