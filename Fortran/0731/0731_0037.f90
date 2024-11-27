integer,dimension(3)::d,e
    e=789
    if (any(TRANSFER (TRANSFER (E, D), E)/=789))write(6,*) "NG"
print *,'pass'
    end

