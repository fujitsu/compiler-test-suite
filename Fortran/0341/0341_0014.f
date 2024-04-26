      real*8 c(20,20),d(20,20)
      do 2 i=1,20
        c(i,:) = i
        d(i,:) = i+1
2     continue

      do 220 i=1,10
        do 220 j=1,10
          do 220 k=1,10
            c(i,j) = c(i,j) + d(i,j) + 1
220    continue

      do 240 i=1,10
        do 240 j=1,10
          do 240 k=1,10
            c(i,j) = c(i,j+1) + d(i,j) + 1
240    continue

      do 260 i=1,10
        do 260 j=1,10
          do 260 k=1,10
            c(i,j) = c(i+1,j) + d(i,j) + 1
260    continue

      do 270 i=1,10
        do 270 j=1,10
          do 270 k=1,10
            c(i,j) = c(i+1,j+1) + d(i,j) + 1
270    continue

      do 320 i=1,10
        do 320 j=1,10
          do 320 k=1,10
            c(j,k) = c(j,k) + d(j,k) + 1
320    continue

      do 340 i=1,10
        do 340 j=1,10
          do 340 k=1,10
            c(j,k) = c(j,k+1) + d(j,k) + 1
340    continue

      do 360 i=1,10
        do 360 j=1,10
          do 360 k=1,10
            c(j,k) = c(j+1,k) + d(j,k) + 1
360    continue

      do 370 i=1,10
        do 370 j=1,10
          do 370 k=1,10
            c(j,k) = c(j+1,k+1) + d(j,k) + 1
370    continue

      do 420 i=1,10
        do 420 j=1,10
          do 420 k=1,10
            c(i,k) = c(i,k) + d(i,k) + 1
420    continue

      do 440 i=1,10
        do 440 j=1,10
          do 440 k=1,10
            c(i,k) = c(i,k+1) + d(i,k) + 1
440    continue

      do 460 i=1,10
        do 460 j=1,10
          do 460 k=1,10
            c(i,k) = c(i+1,k) + d(i,k) + 1
460    continue

      do 470 i=1,10
        do 470 j=1,10
          do 470 k=1,10
            c(i,k) = c(i+1,k+1) + d(i,k) + 1
470    continue

      do 520 i=1,10
        do 520 j=1,10
          do 520 k=1,10
            c(k,j) = c(k,j) + d(k,j) + 1
520    continue

      do 540 i=1,10
        do 540 j=1,10
          do 540 k=1,10
            c(k,j+1) = c(k,j) + d(k,j) + 1
540    continue

      do 560 i=1,10
        do 560 j=1,10
          do 560 k=1,10
            c(k+1,j) = c(k,j) + d(k,j) + 1
560    continue

      do 570 i=1,10
        do 570 j=1,10
          do 570 k=1,10
            c(k+1,j+1) = c(k,j) + d(k,j) + 1
570    continue

      do 620 i=1,10
        do 620 j=1,10
          do 620 k=1,10
            c(j,i) = c(j,i) + d(j,i) + 1
620    continue

      do 640 i=1,10
        do 640 j=1,10
          do 640 k=1,10
            c(j,i+1) = c(j,i) + d(j,i) + 1
640    continue

      do 660 i=1,10
        do 660 j=1,10
          do 660 k=1,10
            c(j+1,i) = c(j,i) + d(j,i) + 1
660    continue

      do 670 i=1,10
        do 670 j=1,10
          do 670 k=1,10
            c(j+1,i+1) = c(j,i) + d(j,i) + 1
670    continue

      do 720 i=1,10
        do 720 j=1,10
          do 720 k=1,10
            c(k,i) = c(k,i) + d(k,i) + 1
720    continue

      do 740 i=1,10
        do 740 j=1,10
          do 740 k=1,10
            c(k,i+1) = c(k,i) + d(k,i) + 1
740    continue

      do 760 i=1,10
        do 760 j=1,10
          do 760 k=1,10
            c(k+1,i) = c(k,i) + d(k,i) + 1
760    continue

      do 770 i=1,10
        do 770 j=1,10
          do 770 k=1,10
            c(k+1,i+1) = c(k,i) + d(k,i) + 1
770    continue
      print *,c
      end
