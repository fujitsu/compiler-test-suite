      character*2 a1(2,2,2),a2(2,2,2),a4(2,2,2),a5(2,2,2)
      integer   a3(2,2,2)
      ic = 1
      read (5,*)i1
      read (5,2)i2,(((a1(k,j,i),i=1,i2),j=i1,i2,i1),k=i1,2,i1)
 2      format(i4,8a2)
 3      format(8a2)
 4      format(8a2)
      do 10 k = 1 , i2
        do 10 j= i1, i2 ,i1
           do 10 i = i1 , 2 ,1
              a2(i,j,k)=a1(k,j,i)
              a3(k,j,i)= ic
 10           ic = ic+1
      write(1,4)(((a1(k,j,i),i=i1,i1+i1),j=1,2),k=i1+0,i2,i1)
      write(2,4)(((a2(i,j,k),i=1,2),j=1,i2),k=i1,2)
      rewind 1
      rewind 2
      read (1,3)(((a4(k,j,i),i=1,2),j=1,2),k=1,2)
      read (2,3)(((a5(i,j,k),i=i1,i2),j=1,2),k=i1,i2)
      write(6,*)(((a3(n,m,l),l=1,2),m=1,2),n=1,2)
     1         ,(((a4(n,m,l),l=1,2),m=1,2),n=1,2)
     2         ,(((a5(l,m,n),l=1,2),m=1,2),n=1,2)
      call  char(a1,a2,a3,a4,a5,i1,i2)
      end
      subroutine char(a1,a2,a3,a4,a5,n1,n2)
      character*(*) a1(2,2,*)*(*),a2(2,2,2)*(*),
     1         a4(n2,n1+n1+n1+n1-n2,*),a5(n2,2,*)
      character*(2) b1(2,2,2)    ,b2(2,2,2)    ,b4(2,2,2)    ,b5(2,2,2)
      integer   a3(2,2,2)
      ic = n2-n1
      rewind 5
      read (5,*)i1
      read (5,2)i2,(((b1(k,j,i),i=1,i2),j=i1,i2,i1),k=i1,2,i1)
      do 12 i=1,i2
        do 12 j=i1,i2
          do 12 k=i1,2
             if (b1(k,j,i) .ne. a1(k,j,i)) then
                 write(6,*)'error --->',b1(k,j,i),a1(k,j,i)
             endif
 12   continue
      rewind 5
      read (5,*)i1
      read (5,2)i2,(((a1(k,j,i),i=1,i2),j=i1,i2,i1),k=i1,2,i1)
 2      format(i4,8a2)
 3      format(8a2)
 4      format(8a2)
      do 10 k = 1 , i2
        do 10 j= i1, i2 ,i1
           do 10 i = i1 , 2 ,1
              b2(i,j,k)=b1(k,j,i)
              a3(k,j,i)= ic
 10           ic = ic+1
      write(3,4)(((a1(k,j,i),i=i1,i1+i1),j=1,2),k=i1+0,i2,i1)
      write(4,4)(((a2(i,j,k),i=1,2),j=1,i2),k=i1,2)
      rewind 3
      rewind 4
      read (3,3)(((a4(k,j,i),i=1,2),j=1,2),k=1,2)
      read (4,3)(((a5(i,j,k),i=i1,i2),j=1,2),k=i1,i2)
      write(6,*)(((a3(n,m,l),l=1,n2,n1),m=1,n2,n1),n=1,n2,n1)
     1         ,(((a4(n,m,l),l=1,n2,n1),m=1,n2,n1),n=1,n2,n1)
     2         ,(((a5(l,m,n),l=1,n2,n1),m=1,n2,n1),n=1,n2,n1)
      write(b4,'(a2)')(((a4(k,j,i),i=i1,i2,i1),j=i1,i2,i1),k=i1,i2,i1)
      write(b5,'(a2)')(((a5(i+i1-i2+i1,i+i1+i1-i2-i+j,i1+i2+k-i1-i2),
     1                     i=i1,i2,i1),j=i1,i2,i1),k=i1,i2,i1)
      read (b5,'(a2)')(((a1(i,j,k),i=i1,n2,i1),j=i1,i2,i1),k=i1,i2,i1)
      read (b4,'(a2)')(((a2(k,j,i),i=i1,n2,i1),j=i1,i2,i1),k=i1,n2,n1)
      do 99 i=i1,i2
          do 99 j=i1,i2
             do 99 k=i1,i2
                if (a5(i,j,k) .ne. a1(i,j,k)) then
                      write  (6,*) 'error --->',a5(i,j,k),a1(i,j,k)
                endif
  99  continue
      do 98 k=i1,i2
          do 98 i=i1,i2
             do 98 j=i1,i2
                if (a4(k,j,i) .ne. a2(k,j,i)) then
                      write  (6,*) 'error --->',a4(k,j,i),a2(k,j,i)
                endif
  98  continue
      return
      end
