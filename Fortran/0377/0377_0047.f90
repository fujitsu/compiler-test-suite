if (kind(nint(1.0,   8)).ne.kind(nint(1.0d0, 8))) print *,'1'
if (kind(nint(1.0q0, 8)).ne.kind(nint(1.0d0, 8))) print *,'2'

print *,'pass'

end
