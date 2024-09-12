if (kind(ceiling(1.0,     kind = 8)).ne.4) print *, ' ceiling  :: kind = ', kind(ceiling(1.0,     kind = 8))
if (kind(count([.true.],  kind = 8)).ne.4) print *, ' count    :: kind = ', kind(count([.true.],  kind = 8))
if (kind(floor(1.0,       kind = 8)).ne.4) print *, ' floor    :: kind = ', kind(floor(1.0,       kind = 8))
if (kind(iachar('a',      kind = 8)).ne.4) print *, ' iachar   :: kind = ', kind(iachar('a',      kind = 8))
if (kind(ichar('a',       kind = 8)).ne.4) print *, ' ichar    :: kind = ', kind(ichar('a',       kind = 8))
if (kind(index('a', 'a',  kind = 8)).ne.4) print *, ' index    :: kind = ', kind(index('a', 'a',  kind = 8))
if (kind(int(1,           kind = 8)).ne.4) print *, ' int      :: kind = ', kind(int(1,           kind = 8))
if (kind(lbound([1],      kind = 8)).ne.4) print *, ' lbound   :: kind = ', kind(lbound([1],      kind = 8))
if (kind(len('a',         kind = 8)).ne.4) print *, ' len      :: kind = ', kind(len('a',         kind = 8))
if (kind(len_trim('a',    kind = 8)).ne.4) print *, ' len_trim :: kind = ', kind(len_trim('a',    kind = 8))
if (kind(maxloc([1], 1,   kind = 8)).ne.4) print *, ' maxloc   :: kind = ', kind(maxloc([1], 1,   kind = 8))
if (kind(minloc([1], 1,   kind = 8)).ne.4) print *, ' minloc   :: kind = ', kind(minloc([1], 1,   kind = 8))
if (kind(nint(1.0,        kind = 8)).ne.4) print *, ' nint     :: kind = ', kind(nint(1.0,        kind = 8))
if (kind(scan('a', 'a',   kind = 8)).ne.4) print *, ' scan     :: kind = ', kind(scan('a', 'a',   kind = 8))
if (kind(shape(1,         kind = 8)).ne.4) print *, ' shape    :: kind = ', kind(shape(1,         kind = 8))
if (kind(size([1],        kind = 8)).ne.4) print *, ' size     :: kind = ', kind(size([1],        kind = 8))
if (kind(ubound([1],      kind = 8)).ne.4) print *, ' ubound   :: kind = ', kind(ubound([1],      kind = 8))
if (kind(verify('a', 'a', kind = 8)).ne.4) print *, ' vefify   :: kind = ', kind(verify('a', 'a', kind = 8))

print *,'pass'

end
