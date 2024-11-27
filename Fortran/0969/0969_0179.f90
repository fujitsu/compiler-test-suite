subroutine csub01(cs01_df01)
 interface
  function cs01_df01() result(cs01_drst01)
   integer, pointer     :: cs01_drst01
  end function
 end interface
 if (associated(cs01_df01())) then
  if (cs01_df01().ne.1) print *,'pointer ', cs01_df01()
 end if
end subroutine

end
