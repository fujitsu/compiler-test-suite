         function af()
           character(len=512)   :: af,bf
           entry bf()
          af='1'
         end function

           character(len=512)   :: a,af,bf
     a=af()
     if (a/='1') print *,101
     a=bf()
     if (a/='1') print *,102
     print *,'pass'
       end
