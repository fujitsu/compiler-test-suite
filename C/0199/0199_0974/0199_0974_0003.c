#include <stdlib.h>
extern signed char v1 (signed char, unsigned char, unsigned int);
extern signed char (*v2) (signed char, unsigned char, unsigned int);
signed short v3 (unsigned int);
signed short (*v4) (unsigned int) = v3;
extern unsigned int v5 (signed short, unsigned short);
extern unsigned int (*v6) (signed short, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern unsigned short v11 (unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short);
extern signed int v13 (signed short, unsigned int, signed short, unsigned char);
extern signed int (*v14) (signed short, unsigned int, signed short, unsigned char);
unsigned int v15 (unsigned char, unsigned short, unsigned int, unsigned int);
unsigned int (*v16) (unsigned char, unsigned short, unsigned int, unsigned int) = v15;
extern unsigned int v19 (unsigned char, unsigned int);
extern unsigned int (*v20) (unsigned char, unsigned int);
extern signed char v21 (unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, unsigned char);
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
signed short v25 (signed short, unsigned char, signed int, signed char);
signed short (*v26) (signed short, unsigned char, signed int, signed char) = v25;
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 6;
unsigned short v93 = 0;
signed int v92 = 2;

signed short v25 (signed short v95, unsigned char v96, signed int v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -1;
unsigned short v100 = 7;
unsigned char v99 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v102, unsigned short v103, unsigned int v104, unsigned int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 1;
unsigned char v107 = 0;
unsigned int v106 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned char v111 = 4;
unsigned char v110 = 5;
signed short v109 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
unsigned int v114 = 3U;
unsigned short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
