        if (.false.) then
        !$OMP CRITICAL (block_touched_critical)
        !$OMP END CRITICAL (block_touched_critical)
        endif
        print *,'pass'
        end
