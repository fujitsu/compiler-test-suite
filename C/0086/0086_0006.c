#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <inttypes.h>
#include <arm_sve.h>

static int check_active_lanes(
    uint64_t active_lanes,
    uint64_t total_lanes)
{
    const int is_valid = active_lanes == total_lanes;
    return is_valid ? 0 : 1;
}

int main(void)
{
    int failures = 0;
    svbool_t b8 = svptrue_b8();
    svbool_t b16 = svptrue_b16();
    svbool_t b32 = svptrue_b32();
    svbool_t b64 = svptrue_b64();

#pragma omp parallel default(none) shared(failures,b8,b16,b32,b64)
    {
#pragma omp master
        {
            failures =
                check_active_lanes(svcntp_b8(b8, b8), svcntb()) |
                check_active_lanes(svcntp_b16(b16, b16), svcnth()) |
                check_active_lanes(svcntp_b32(b32, b32), svcntw()) |
                check_active_lanes(svcntp_b64(b64, b64), svcntd());
        }
    }
    return failures != 0;
}

#else

int main(void)
{
    return 0;
}
#endif
