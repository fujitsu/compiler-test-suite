#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (double);
extern signed short (*v2) (double);
union uu1 v3 (void);
union uu1 (*v4) (void) = v3;
struct ss0 v7 (struct ss0);
struct ss0 (*v8) (struct ss0) = v7;
extern int history[];
extern int history_index;
extern int trace;
float v45 = -319924796.50056F;
struct ss0 v44 = { 239000U, 732140U, 18191, };
signed char v43 = -11;

struct ss0 v7 (struct ss0 v46)
{
history[history_index++] = (int)v46.f2;
history[history_index++] = (int)v46.f1;
history[history_index++] = (int)v46.f0;
{
for (;;) {
signed short v49 = -24950;
union uu1 v48 = {1801875213 };
union uu1 v47 = {1844391002 };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

union uu1 v3 (void)
{
{
for (;;) {
union uu1 v52 = {672455179 };
float v51 = -1239965384.5871F;
struct ss1 v50 = { 23721, 64618276, 50726005U, 492U, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
