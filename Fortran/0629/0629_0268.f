      subroutine mkms1(aaa,m)
      integer*4 kk,aaa(6,6)

      do 31 i1=1,m
      do 31 i2=1,m
      do 31 i3=1,m
 31   continue

      do 41 i2=1,m
      do 41 i3=1,m
      do 41 i4=1,m
        kk=1
      do 40 i5=1,m
        aaa(i2,i5)=kk
 40   continue
 41   continue
      write(6,*) aaa
      return
      end

      program main
      integer aaa(6,6)
      call mkms1(aaa,6)
      end
