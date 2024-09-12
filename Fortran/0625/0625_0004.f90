module mod01
 interface
  subroutine m01_isub01(m01_is01_ds01)
   interface
    subroutine m01_is01_ds01(m01_is01_ds01_ds01)
     interface
      subroutine m01_is01_ds01_ds01()
      end subroutine
     end interface
    end subroutine
   end interface
  end subroutine
  subroutine m01_isub02(m01_is02_ds01)
   interface
    subroutine m01_is02_ds01(m01_is02_ds01_ds01)
     interface
      subroutine m01_is02_ds01_ds01(m01_is02_ds01_ds01_ds01)
       interface
        subroutine m01_is02_ds01_ds01_ds01()
        end subroutine
       end interface
      end subroutine
     end interface
    end subroutine
   end interface
  end subroutine
 end interface
 contains
  subroutine m01_sub01(m01_s01_ds01)
   interface
    subroutine m01_s01_ds01(m01_s01_ds01_ds01)
     interface
      subroutine m01_s01_ds01_ds01()
      end subroutine
     end interface
    end subroutine
   end interface
  end subroutine
  subroutine m01_sub02(m01_s02_ds01)
   interface
    subroutine m01_s02_ds01(m01_s02_ds01_ds01)
     interface
      subroutine m01_s02_ds01_ds01(m01_s02_ds01_ds01_ds01)
       interface
        subroutine m01_s02_ds01_ds01_ds01()
        end subroutine
       end interface
      end subroutine
     end interface
    end subroutine
   end interface
  end subroutine
end module

use mod01

interface
 subroutine isub01(is01_ds01)
  interface
   subroutine is01_ds01(is01_ds01_ds01)
    interface
     subroutine is01_ds01_ds01()
     end subroutine
    end interface
   end subroutine
  end interface
 end subroutine
 subroutine isub02(is02_ds01)
  interface
   subroutine is02_ds01(is02_ds01_ds01)
    interface
     subroutine is02_ds01_ds01(is02_ds01_ds01_ds01)
      interface
       subroutine is02_ds01_ds01_ds01()
       end subroutine
      end interface
     end subroutine
    end interface
   end subroutine
  end interface
 end subroutine
end interface

call m01_isub02(m01_isub01)
call m01_isub02(m01_sub01)
call m01_isub02(isub01)

call m01_sub02(m01_isub01)
call m01_sub02(m01_sub01)
call m01_sub02(isub01)

call isub02(m01_isub01)
call isub02(m01_sub01)
call isub02(isub01)

print *,'pass'

end

subroutine m01_isub01(m01_is01_ds01)
 interface
  subroutine m01_is01_ds01(m01_is01_ds01_ds01)
   interface
    subroutine m01_is01_ds01_ds01()
    end subroutine
   end interface
  end subroutine
 end interface
end subroutine

subroutine m01_isub02(m01_is02_ds01)
 interface
  subroutine m01_is02_ds01(m01_is02_ds01_ds01)
   interface
    subroutine m01_is02_ds01_ds01(m01_is02_ds01_ds01_ds01)
     interface
       subroutine m01_is02_ds01_ds01_ds01()
       end subroutine
     end interface
     end subroutine
   end interface
  end subroutine
 end interface
end subroutine

subroutine isub01(is01_ds01)
 interface
  subroutine is01_ds01(is01_ds01_ds01)
   interface
    subroutine is01_ds01_ds01()
    end subroutine
   end interface
  end subroutine
 end interface
end subroutine

subroutine isub02(is02_ds01)
 interface
  subroutine is02_ds01(is02_ds01_ds01)
   interface
    subroutine is02_ds01_ds01(is02_ds01_ds01_ds01)
     interface
      subroutine is02_ds01_ds01_ds01()
      end subroutine
     end interface
    end subroutine
   end interface
  end subroutine
 end interface
end subroutine
