      real a(-13:20,-13:20,-13:20)
      a=1
c
      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
        a(i,j,k) = a(i+1+2,j,k) + 1
10    continue
      do 20 i=1,10
      do 20 j=1,10
      do 20 k=1,10
        a(i,j,k) = a(i+1+2,j+1,k) + 1
20    continue
      do 30 i=1,10
      do 30 j=1,10
      do 30 k=1,10
        a(i,j,k) = a(i+1+2,j+1,k+1) + 1
30    continue
      do 40 i=1,10
      do 40 j=1,10
      do 40 k=1,10
        a(i+1,j,k) = a(i+1+2,j+1,k+1) + 1
40    continue
      do 50 i=1,10
      do 50 j=1,10
      do 50 k=1,10
        a(i+1,j+1,k) = a(i+1+2,j+1,k+1) + 1
50    continue
      do 60 i=1,10
      do 60 j=1,10
      do 60 k=1,10
        a(i+1,j+1,k+1) = a(i+1+2,j+1,k+1) + 1
60    continue
      print '(f11.8)',a
c
      do 110 i=1,10
      do 110 j=1,10
      do 110 k=1,10
        a(i,j,k) = a(i-1-2,j,k) - 1
110    continue
      do 120 i=1,10
      do 120 j=1,10
      do 120 k=1,10
        a(i,j,k) = a(i-1-2,j-1,k) - 1
120    continue
      do 130 i=1,10
      do 130 j=1,10
      do 130 k=1,10
        a(i,j,k) = a(i-1-2,j-1,k-1) - 1
130    continue
      do 140 i=1,10
      do 140 j=1,10
      do 140 k=1,10
        a(i-1,j,k) = a(i-1-2,j-1,k-1) - 1
140    continue
      do 150 i=1,10
      do 150 j=1,10
      do 150 k=1,10
        a(i-1,j-1,k) = a(i-1-2,j-1,k-1) - 1
150    continue
      do 160 i=1,10
      do 160 j=1,10
      do 160 k=1,10
        a(i-1,j-1,k-1) = a(i-1-2,j-1,k-1) - 1
160    continue
      print '(f11.8)',a
c
      do 210 i=1,10
      do 210 j=1,10
      do 210 k=1,10
        a(i,j,k) = a(i*1*2,j,k) * 1
210    continue
      do 220 i=1,10
      do 220 j=1,10
      do 220 k=1,10
        a(i,j,k) = a(i*1*2,j*1,k) * 1
220    continue
      do 230 i=1,10
      do 230 j=1,10
      do 230 k=1,10
        a(i,j,k) = a(i*1*2,j*1,k*1) * 1
230    continue
      do 240 i=1,10
      do 240 j=1,10
      do 240 k=1,10
        a(i*1,j,k) = a(i*1*2,j*1,k*1) * 1
240    continue
      do 250 i=1,10
      do 250 j=1,10
      do 250 k=1,10
        a(i*1,j*1,k) = a(i*1*2,j*1,k*1) * 1
250    continue
      do 260 i=1,10
      do 260 j=1,10
      do 260 k=1,10
        a(i*1,j*1,k*1) = a(i*1*2,j*1,k*1) * 1
260    continue
      print '(f11.8)',a
c
      do 310 i=1,10
      do 310 j=1,10
      do 310 k=1,10
        a(i,j,k) = a(i/1/1,j,k) / 1
310    continue
      do 320 i=1,10
      do 320 j=1,10
      do 320 k=1,10
        a(i,j,k) = a(i/1/1,j/1,k) / 1
320    continue
      do 330 i=1,10
      do 330 j=1,10
      do 330 k=1,10
        a(i,j,k) = a(i/1/1,j/1,k/1) / 1
330    continue
      do 340 i=1,10
      do 340 j=1,10
      do 340 k=1,10
        a(i/1,j,k) = a(i/1/1,j/1,k/1) / 1
340    continue
      do 350 i=1,10
      do 350 j=1,10
      do 350 k=1,10
        a(i/1,j/1,k) = a(i/1/1,j/1,k/1) / 1
350    continue
      do 360 i=1,10
      do 360 j=1,10
      do 360 k=1,10
        a(i/1,j/1,k/1) = a(i/1/1,j/1,k/1) / 1
360    continue
      print '(f11.8)',a
      end
