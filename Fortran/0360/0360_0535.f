      integer*1 i1a(10)/10*0/,i1b(10)/1,2,3,4,5,6,7,8,9,10/
      integer*2 i2a(10)/10*0/,i2b(10)/1,2,3,4,5,6,7,8,9,10/
      integer*4 i4a(10)/10*0/,i4b(10)/1,2,3,4,5,6,7,8,9,10/
      integer*8 i8a(10)/10*0/,i8b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4    r4a(10)/10*0/,r4b(10)/1,2,3,4,5,6,7,8,9,10/
      real*8    r8a(10)/10*0/,r8b(10)/1,2,3,4,5,6,7,8,9,10/
      real*16   r16a(10)/10*0/,r16b(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,9
         i1a(2) = max(i1a(2) , i1b(i))
         i2a(2) = min(i2a(2) ,i2b(i))
      enddo
      write(6,*) 'i1 ',i1a(2)
      write(6,*) 'i2 ',i2a(2)

      do i=1,9
         i4a(2) =  max(i4a(2) , i4b(i))
         r4a(2) =  min(r4a(2) , r4b(i))
      enddo
      write(6,*) 'i4 ',i4a(2)
      write(6,*) 'r4 ',r4a(2)

      do i=1,9
         i8a(2) =  min(i8a(2) , i8b(i))
         r8a(2) =  max(r8a(2) , r8b(i))
      enddo
      write(6,*) 'i8 ',i8a(2)
      write(6,*) 'r8 ' ,r8a(2)

      do i=1,9
         r16a(2) = max(r16a(2) , r16b(i))
      enddo
      write(6,*) 'r16 ',r16a(2)

      do i=1,8
         i1a(7) = min(i1a(7) , i1b(i))
         i2a(7) = max(i2a(7) , i2b(i))
      enddo
      write(6,*) 'i1 ',i1a(7)
      write(6,*) 'i2 ',i2a(7)

      do i=1,8
         i4a(7) =  min(i4a(7) , i4b(i))
         r4a(7) =  max(r4a(7) , r4b(i))
      enddo
      write(6,*) 'i4 ',i4a(7)
      write(6,*) 'r4 ',r4a(7)

      do i=1,8
         i8a(7) =  max(i8a(7) , i8b(i))
         r8a(7) =  min(r8a(7) , r8b(i))
      enddo
      write(6,*) 'i8 ',i8a(7)
      write(6,*) 'r8 ' ,r8a(7)

      do i=1,8
         r16a(7) = max(r16a(7) , r16b(i))
      enddo
      write(6,*) 'r16 ',r16a(7)

      end
