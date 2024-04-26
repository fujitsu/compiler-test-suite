      module m1
       interface gnr
         procedure k1
         procedurek2
       end interface
       contains
       function k1(n1,n2)
        integer::n1,n2,k1
        intent(in)::n1,n2
         k1=n1+n2
       end function
       function k2(n1,n2)
        integer::n1,k2
        real::n2
        intent(in)::n1,n2
         k2=n1*n2
       end function
     end

    use m1
      if (gnr(1,2)/=3) print *,101
      print *,'PASS'
     end
