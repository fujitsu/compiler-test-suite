      module m1
      contains
        function xxx(i) result(k)
          print *,'error'
        entry xx(i) result(k)
          k=yy(i)
          k=k+1
        end function
        function yy(i) result(k)
          k=i
        end function
      end module

      module m2
      contains
        function ss1(i) result(k)
         use m1
          k=xx(i)
          k=k+1
        end function
      end module

      module m3
       use m2
      contains
        function ss(i) result(k)
          k=ss1(i)
          k=k+1
        end function
      end module

      module m4
       use m3
      contains
        function xxx(i) result(k)
          print *,'error'
        entry xx(i) result(k)
          k=ss(i)
          k=k+1
        end function
      end module

       use m4
       i=1
       k = xx(i)
       if (k/=5) print *,'error'
       print *,'pass'
      end
