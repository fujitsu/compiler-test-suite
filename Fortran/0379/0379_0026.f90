block data 
  enum,bind(C)
    enumerator :: iii = 100
  end enum
  integer :: jjj
  common /com/ jjj
  data jjj/iii/
end block  data

common /com/ jjj
if (jjj .eq. 100) print *,'ok'
end
