       integer JJ(1256)
       character*10 CFMT
       write(92,'(a)') repeat('1',1256)
       write(92,'(a)') repeat('1',1256)
       rewind 92
       READ(92,'(255I1)') (JJ(i),i=1,255)
       CFMT='(255I1)'
       READ(92,CFMT) (JJ(i),i=1,255)
       rewind 92
       READ(92,'(256I1)') (JJ(i),i=1,256)
       CFMT='(256I1)'
       READ(92,CFMT) (JJ(i),i=1,256)
       rewind 92
       READ(92,'(1256I1)') (JJ(i),i=1,1256)
       CFMT='(1256I1)'
       READ(92,CFMT) (JJ(i),i=1,1256)
print *,'pass'
       end
