module m1
  interface
    module subroutine s
    end subroutine
  end interface
  contains
   module procedure s
   end 
end
 use m1
print *,'pass'
end


