 module m
 private
   integer,public::n=2
   interface
      character(n+1) module function sub()
      end
   end interface
 end module m

      character(1+n-1) function ssub()
        use m
        ssub='12'
      end

print *,'pass'
end
