#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, unsigned short);
extern unsigned short v5 (unsigned short, signed int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed int, signed char, signed short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
extern unsigned short v11 (signed short, signed int, unsigned short, unsigned short);
extern unsigned short (*v12) (signed short, signed int, unsigned short, unsigned short);
signed char v13 (unsigned char, unsigned short, signed int);
signed char (*v14) (unsigned char, unsigned short, signed int) = v13;
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
signed int v17 (unsigned int, unsigned int);
signed int (*v18) (unsigned int, unsigned int) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 0U;
signed int v103 = -2;
unsigned char v102 = 5;

signed int v17 (unsigned int v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 1;
signed char v108 = 0;
unsigned int v107 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v110, unsigned short v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 0;
unsigned int v114 = 3U;
signed short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
