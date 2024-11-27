       integer JJ(1256)
       character*10 CFMT
       character*1256 x
       do i=1,1256
         x(i:i)='1'
       end do
       write(10,'(a)') x
       write(10,'(a)') x
       rewind 10
       READ(10,'(255I1)') (JJ(i),i=1,255)   
       CFMT='(255I1)'                      
       READ(10,CFMT) (JJ(i),i=1,255)
       rewind 10
       READ(10,'(256I1)') (JJ(i),i=1,256)   
       CFMT='(256I1)'                      
       READ(10,CFMT) (JJ(i),i=1,256)
       rewind 10
       READ(10,'(1256I1)') (JJ(i),i=1,1256)   
       CFMT='(1256I1)'                      
       READ(10,CFMT) (JJ(i),i=1,1256)
       print *,'pass'
       end


