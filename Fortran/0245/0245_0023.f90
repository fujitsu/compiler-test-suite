integer,target :: arr(8)=2
 integer,contiguous,pointer :: dd(:)
dd=>arr(::1)

 if(all(dd==2)) print*,'pass'
end
