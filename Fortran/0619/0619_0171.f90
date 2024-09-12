character(10,1)::msg
integer k(2)
msg='abc'
k(2)=2
rewind (1,iomsg=msg,iostat=k(2))
if (msg/='abc') print *,101
if (k(2)/=0) print *,102
print *,'pass'
end
