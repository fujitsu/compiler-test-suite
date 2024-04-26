c
       program   snrna0f
       dimension iary(20)
       data      i1/1/, i2/2/, i3/3/, i4/4/
c
       iii=i2/i4
       iij=(i1+i2)/(i4-i3)
       do 30 i=1,10
         iary(i)=(iij*i-1)/((i+2)/3)/5
         iary(i+iij)=iii/iij
30     continue
       iary(1)=(iary(2)*i)/iij/(iii-1)
       iary(2)=iary(3)/((iii+iij)**iii)/(iij+1)
       iary(3)=iary(1)/(iary(2)+i)/((iary(2)-i)/iij)
       call sub(iary)
       stop
       end
       subroutine sub(iary)
       dimension  iary(20), jary(20)
       data       jary/ -3, 0, 0, 1, 1, 1, 1, 1, 1, 1,
     .                   0, 0, 0, 0, 0, 0, 0, 0, 0, 0 /
       do 10 i=1,13
         if ( iary(i).ne.jary(i) ) then
           write(6,*) '*** ng ***'
           stop
         endif
10     continue
       write(6,*) '*** ok ***'
       end
