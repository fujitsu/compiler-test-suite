character (kind=4,len=1) :: c4
c4=4_"a"
if (kind(ichar(c4,4)).ne.4) call errtra
end
