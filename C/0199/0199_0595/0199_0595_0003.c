#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed short);
extern unsigned char (*v2) (signed int, signed char, signed short);
extern signed char v3 (unsigned char, signed char, unsigned short, unsigned char);
extern signed char (*v4) (unsigned char, signed char, unsigned short, unsigned char);
extern signed int v5 (signed int, unsigned int, unsigned char, unsigned int);
extern signed int (*v6) (signed int, unsigned int, unsigned char, unsigned int);
extern signed short v7 (unsigned short, signed short, unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, signed short, unsigned short, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
unsigned int v11 (signed int, unsigned char, unsigned int, signed short);
unsigned int (*v12) (signed int, unsigned char, unsigned int, signed short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned short v19 (signed char, signed short, signed int);
unsigned short (*v20) (signed char, signed short, signed int) = v19;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
signed char v27 (unsigned char, signed char);
signed char (*v28) (unsigned char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 2;
signed char v103 = -2;
unsigned short v102 = 0;

signed char v27 (unsigned char v105, signed char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 0;
signed char v108 = 2;
signed char v107 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v110, signed short v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 1;
signed int v114 = 2;
unsigned char v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v116, unsigned char v117, unsigned int v118, signed short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -3;
signed int v121 = -1;
unsigned short v120 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
