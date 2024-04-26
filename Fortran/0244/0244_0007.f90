call sss(aa())

contains
subroutine sss(b)
integer::b(5,4)
if(all(b(:,1:4)==4)) print*,'pass'
end subroutine

function aa()
integer,pointer,contiguous :: aa(:,:)

allocate(aa(5,4))
aa = 4

end function
end
