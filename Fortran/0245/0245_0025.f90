character(len=3),pointer,contiguous :: ptr(:)
character(len=3),target :: arr(8)='abc'
character(len=3),contiguous,pointer :: dd(:)

ptr => arr

dd => ptr

 if(all(dd=='abc')) print*,'pass'
end
