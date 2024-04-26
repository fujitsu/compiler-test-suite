      real*8 a(20,20,20)
      do 1 i=1,20
      do 1 j=1,20
      do 1 k=1,20
        a(i,j,k) = j
1     continue

      do 10 k=1,10
      l=i
      do 10 i=1,10
      do 10 j=1,10
        a(i,j,k) = a(i,j,k) + 1
10    continue
      print *,a,l

      do 20 k=1,10
      i=i+1
      do 20 i=1,10
      do 20 j=1,10
        a(i,j,k) = a(i,j,k) + 1
20    continue
      print *,a,l

      l=1
      do 30 k=1,10
      i=l+1
      do 30 i=1,10
      do 30 j=1,10
        a(i,j,k) = a(i,j,k) + 1
30    continue
      print *,a,l

      do 40 k=1,10
      j=1
      do 40 i=1,10
      do 40 j=1,10
        a(i,j,k) = a(i,j,k) + 1
40    continue
      print *,a,l

      do 50 k=1,10
      l=j
      do 50 i=1,10
      do 50 j=1,10
        a(i,j,k) = a(i,j,k) + 1
50    continue
      print *,a,l

      do 60 k=1,10
      j=j+i
      do 60 i=1,10
      do 60 j=1,10
        a(i,j,k) = a(i,j,k) + 1
60    continue
      print *,a,l

      do 70 k=1,10
      i=j+i
      do 70 i=1,10
      do 70 j=1,10
        a(i,j,k) = a(i,j,k) + 1
70    continue
      print *,a,l
c
c
c
      do 110 k=1,10
      do 111 i=1,10
      do 111 j=1,10
        a(i,j,k) = a(i,j,k) + 1
111    continue
      l=i
110    continue
      print *,a,l

      do 120 k=1,10
      do 121 i=1,10
      do 121 j=1,10
        a(i,j,k) = a(i,j,k) + 1
121    continue
      i=i+1
120    continue
      print *,a,l

      l=1
      do 130 k=1,10
      do 131 i=1,10
      do 131 j=1,10
        a(i,j,k) = a(i,j,k) + 1
131    continue
      i=l+1
130    continue
      print *,a,l

      do 140 k=1,10
      do 141 i=1,10
      do 141 j=1,10
        a(i,j,k) = a(i,j,k) + 1
141    continue
      j=1
140    continue
      print *,a,l

      do 150 k=1,10
      do 151 i=1,10
      do 151 j=1,10
        a(i,j,k) = a(i,j,k) + 1
151    continue
      l=j
150    continue
      print *,a,l

      do 160 k=1,10
      do 161 i=1,10
      do 161 j=1,10
        a(i,j,k) = a(i,j,k) + 1
161    continue
      j=j+i
160    continue
      print *,a,l

      do 170 k=1,10
      do 171 i=1,10
      do 171 j=1,10
        a(i,j,k) = a(i,j,k) + 1
171    continue
      i=j+i
170    continue
      print *,a,l
      end
