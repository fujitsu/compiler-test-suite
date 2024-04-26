      real a(10,10),b(10,10),c(10,10)
      b=2
      c=3
      m=1
      n=10
c
      do 10 i=1,10
      do 10 j=1,10
        a(i,j) = 1
      do 10 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
10    continue
      print '(f11.8)',a
c
      do 11 i=1,10
      do 11 j=1,10
        a(i,j) = 1
      do 11 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
11    continue
      print '(f11.8)',a
c
      do 12 i=1,10
      do 12 j=1,10
        a(i,j) = 1
      do 12 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
12    continue
      print '(f11.8)',a
c
      do 13 i=1,10
      do 13 j=1,10
        a(i,j) = 1
      do 13 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
13    continue
      print '(f11.8)',a
c
      do 14 i=1,10
      do 14 j=1,n
        a(i,j) = 1
      do 14 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
14    continue
      print '(f11.8)',a
c
c
c
      do 15 i=1,10
      do 15 j=1,n
        a(i,j) = 1
      do 15 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
15    continue
      print '(f11.8)',a
c
      do 16 i=1,10
      do 16 j=1,n
        a(i,j) = 1
      do 16 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
16    continue
      print '(f11.8)',a
c
      do 17 i=1,10
      do 17 j=1,n
        a(i,j) = 1
      do 17 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
17    continue
      print '(f11.8)',a
c
      do 18 i=1,10
      do 18 j=m,10
        a(i,j) = 1
      do 18 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
18    continue
      print '(f11.8)',a
c
      do 19 i=1,10
      do 19 j=m,10
        a(i,j) = 1
      do 19 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
19    continue
      print '(f11.8)',a
c
      do 20 i=1,10
      do 20 j=m,10
        a(i,j) = 1
      do 20 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
20    continue
      print '(f11.8)',a
c
      do 21 i=1,10
      do 21 j=m,10
        a(i,j) = 1
      do 21 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
21    continue
      print '(f11.8)',a
c
      do 22 i=1,10
      do 22 j=m,n
        a(i,j) = 1
      do 22 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
22    continue
      print '(f11.8)',a
c
      do 23 i=1,10
      do 23 j=m,n
        a(i,j) = 1
      do 23 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
23    continue
      print '(f11.8)',a
c
      do 24 i=1,10
      do 24 j=m,n
        a(i,j) = 1
      do 24 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
24    continue
      print '(f11.8)',a
c
      do 25 i=1,10
      do 25 j=m,n
        a(i,j) = 1
      do 25 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
25    continue
      print '(f11.8)',a
c
      do 26 i=1,n
      do 26 j=1,10
        a(i,j) = 1
      do 26 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
26    continue
      print '(f11.8)',a
c
      do 27 i=1,n
      do 27 j=1,10
        a(i,j) = 1
      do 27 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
27    continue
      print '(f11.8)',a
c
      do 28 i=1,n
      do 28 j=1,10
        a(i,j) = 1
      do 28 k=1,m
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
28    continue
      print '(f11.8)',a
c
      do 29 i=1,n
      do 29 j=1,10
        a(i,j) = 1
      do 29 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
29    continue
      print '(f11.8)',a
c
      do 30 i=1,n
      do 30 j=1,10
        a(i,j) = 1
      do 30 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
30    continue
      print '(f11.8)',a
c
      do 31 i=1,n
      do 31 j=1,n
        a(i,j) = 1
      do 31 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
31    continue
      print '(f11.8)',a
c
      do 32 i=1,n
      do 32 j=1,n
        a(i,j) = 1
      do 32 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
32    continue
      print '(f11.8)',a
c
      do 33 i=1,n
      do 33 j=1,n
        a(i,j) = 1
      do 33 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
33    continue
      print '(f11.8)',a
c
      do 34 i=1,n
      do 34 j=1,n
        a(i,j) = 1
      do 34 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
34    continue
      print '(f11.8)',a
c
      do 35 i=m,10
      do 35 j=1,10
        a(i,j) = 1
      do 35 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
35    continue
      print '(f11.8)',a
c
      do 36 i=m,10
      do 36 j=1,10
        a(i,j) = 1
      do 36 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
36    continue
      print '(f11.8)',a
c
      do 37 i=m,10
      do 37 j=1,10
        a(i,j) = 1
      do 37 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
37    continue
      print '(f11.8)',a
c
      do 38 i=m,10
      do 38 j=1,10
        a(i,j) = 1
      do 38 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
38    continue
      print '(f11.8)',a
c
      do 39 i=m,10
      do 39 j=1,n
        a(i,j) = 1
      do 39 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
39    continue
      print '(f11.8)',a
c
      do 40 i=m,10
      do 40 j=1,n
        a(i,j) = 1
      do 40 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
40    continue
      print '(f11.8)',a
c
      do 41 i=m,10
      do 41 j=1,n
        a(i,j) = 1
      do 41 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
41    continue
      print '(f11.8)',a
c
      do 42 i=m,10
      do 42 j=1,n
        a(i,j) = 1
      do 42 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
42    continue
      print '(f11.8)',a
c
      do 43 i=m,10
      do 43 j=m,10
        a(i,j) = 1
      do 43 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
43    continue
      print '(f11.8)',a
c
      do 44 i=m,10
      do 44 j=m,10
        a(i,j) = 1
      do 44 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
44    continue
      print '(f11.8)',a
c
      do 45 i=m,10
      do 45 j=m,10
        a(i,j) = 1
      do 45 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
45    continue
      print '(f11.8)',a
c
      do 46 i=m,10
      do 46 j=m,10
        a(i,j) = 1
      do 46 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
46    continue
      print '(f11.8)',a
c
      do 47 i=m,10
      do 47 j=m,n
        a(i,j) = 1
      do 47 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
47    continue
      print '(f11.8)',a
c
      do 48 i=m,10
      do 48 j=m,n
        a(i,j) = 1
      do 48 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
48    continue
      print '(f11.8)',a
c
      do 49 i=m,10
      do 49 j=m,n
        a(i,j) = 1
      do 49 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
49    continue
      print '(f11.8)',a
c
      do 50 i=m,10
      do 50 j=m,n
        a(i,j) = 1
      do 50 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
50    continue
      print '(f11.8)',a
c
      do 51 i=m,n
      do 51 j=1,10
        a(i,j) = 1
      do 51 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
51    continue
      print '(f11.8)',a
c
      do 52 i=m,n
      do 52 j=1,10
        a(i,j) = 1
      do 52 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
52    continue
      print '(f11.8)',a
c
      do 53 i=m,n
      do 53 j=1,10
        a(i,j) = 1
      do 53 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
53    continue
      print '(f11.8)',a
c
      do 54 i=m,n
      do 54 j=1,10
        a(i,j) = 1
      do 54 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
54    continue
      print '(f11.8)',a
c
      do 55 i=m,n
      do 55 j=1,n
        a(i,j) = 1
      do 55 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
55    continue
      print '(f11.8)',a
c
      do 56 i=m,n
      do 56 j=1,n
        a(i,j) = 1
      do 56 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
56    continue
      print '(f11.8)',a
c
      do 57 i=m,n
      do 57 j=1,n
        a(i,j) = 1
      do 57 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
57    continue
      print '(f11.8)',a
c
      do 58 i=m,n
      do 58 j=1,n
        a(i,j) = 1
      do 58 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
58    continue
      print '(f11.8)',a
c
      do 59 i=m,n
      do 59 j=m,n
        a(i,j) = 1
      do 59 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
59    continue
      print '(f11.8)',a
c
      do 60 i=m,n
      do 60 j=m,n
        a(i,j) = 1
      do 60 k=1,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
60    continue
      print '(f11.8)',a
c
      do 61 i=m,n
      do 61 j=m,n
        a(i,j) = 1
      do 61 k=m,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
61    continue
      print '(f11.8)',a
c
      do 62 i=m,n
      do 62 j=m,n
        a(i,j) = 1
      do 62 k=m,n
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
62    continue
      print '(f11.8)',a
c
      print '(f11.8)',a
      end
