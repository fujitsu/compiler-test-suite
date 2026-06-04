#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern signed int v3 (signed char, unsigned char, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned short);
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
unsigned char v7 (unsigned char, signed short, unsigned short, unsigned short);
unsigned char (*v8) (unsigned char, signed short, unsigned short, unsigned short) = v7;
extern void v9 (void);
extern void (*v10) (void);
unsigned short v11 (signed int, signed int, unsigned short, signed int);
unsigned short (*v12) (signed int, signed int, unsigned short, signed int) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed int v19 (unsigned char, signed short, unsigned short, signed char);
extern signed int (*v20) (unsigned char, signed short, unsigned short, signed char);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v98 = 0;
unsigned int v97 = 0U;
unsigned short v96 = 5;

unsigned short v21 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -4;
unsigned int v101 = 2U;
unsigned int v100 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v103, signed int v104, unsigned short v105, signed int v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -2;
signed int v108 = -2;
signed int v107 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v110, signed short v111, unsigned short v112, unsigned short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 6U;
unsigned int v115 = 6U;
signed short v114 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 3;
signed char v119 = -4;
unsigned char v118 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
