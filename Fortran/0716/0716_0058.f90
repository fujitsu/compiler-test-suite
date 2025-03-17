if (kind(ichar(max('a','b'),4)).ne.4) print *,'fail'
if (kind(ichar(max(4_"a",4_"b"),4)).ne.4) print *,'fail'
end
