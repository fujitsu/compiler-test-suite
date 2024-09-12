      subroutine mkms1(r8a4,m)
      integer r8s3,r8a4(6,6)

      do 31 i1=1,6
         do 31 i2=1,6
            do 31 i3=1,m
               r8s3=2
               do 30 i4=1,6
                  r8a4(i1,i4)=r8s3
 30            continue
 31   continue
      write(6,*) r8a4(2,2)
      return
      end

      program main
      integer r8a4(6,6,6,6)
      call mkms1(r8a4,6)
      end
