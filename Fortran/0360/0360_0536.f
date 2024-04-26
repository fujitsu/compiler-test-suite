      integer*1 i1a/5/,i1b(10)/1,2,3,4,5,6,7,8,9,10/
      integer*2 i2a/5/,i2b(10)/1,2,3,4,5,6,7,8,9,10/
      integer*4 i4a/5/,i4b(10)/1,2,3,4,5,6,7,8,9,10/
      integer*8 i8a/5/,i8b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4    r4a/5/,r4b(10)/1,2,3,4,5,6,7,8,9,10/
      real*8    r8a/5/,r8b(10)/1,2,3,4,5,6,7,8,9,10/
      real*16   r16a/5/,r16b(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,9
         i1a = max(i1a , i1b(i))
         i2a = min(i2a ,i2b(i))
      enddo
      write(6,*) 'i1 ',i1a
      write(6,*) 'i2 ',i2a

      do i=1,9
         i4a =  max(i4a , i4b(i))
         r4a =  min(r4a , r4b(i))
      enddo
      write(6,*) 'i4 ',i4a
      write(6,*) 'r4 ',r4a

      do i=1,9
         i8a =  min(i8a , i8b(i))
         r8a =  max(r8a , r8b(i))
      enddo
      write(6,*) 'i8 ',i8a
      write(6,*) 'r8 ' ,r8a

      do i=1,9
         r16a = max(r16a , r16b(i))
      enddo
      write(6,*) 'r16 ',r16a

      do i=1,8
         i1a = min(i1a , i1b(i))
         i2a = max(i2a , i2b(i))
      enddo
      write(6,*) 'i1 ',i1a
      write(6,*) 'i2 ',i2a

      do i=1,8
         i4a =  min(i4a , i4b(i))
         r4a =  max(r4a , r4b(i))
      enddo
      write(6,*) 'i4 ',i4a
      write(6,*) 'r4 ',r4a

      do i=1,8
         i8a =  max(i8a , i8b(i))
         r8a =  min(r8a , r8b(i))
      enddo
      write(6,*) 'i8 ',i8a
      write(6,*) 'r8 ' ,r8a

      do i=1,8
         r16a = max(r16a , r16b(i))
      enddo
      write(6,*) 'r16 ',r16a

      end
