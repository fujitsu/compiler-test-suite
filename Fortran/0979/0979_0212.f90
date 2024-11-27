print *,"pass"
end

subroutine test01(in,out,inout)
intent(in) :: in
intent(inout) :: inout
intent(out) :: out
pointer :: in,out,inout
inout=in
out=in
end
