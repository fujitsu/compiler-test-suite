      integer*4 a1
      dimension a1(1000)
      a1=5
      call s1
      call s2
      call s3(a1,1000)
      if (a1(1000).ne.5) then
         print *,"NG"
      else
         print *,"OK"
      endif
      end

      subroutine s1
      return
      print *,"NG"
      end
  
      subroutine s2
      print *,"OK"
      return
      end

      subroutine s3(aa,in)
      integer*4 aa
      dimension aa(1000)
      do k=1,in
         if (k.eq.100) return
         aa(k)=k
      end do
      print *,"NG"
      end
