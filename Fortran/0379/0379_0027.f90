module mod
  ENUM,BiNd(C)
    enumerator :: iii = 10
  end Enum
end module
use mod
if (  iii .eq. 10 ) print *,'ok'
end
