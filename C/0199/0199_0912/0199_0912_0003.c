#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
signed short v3 (unsigned int, unsigned int, unsigned char);
signed short (*v4) (unsigned int, unsigned int, unsigned char) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
signed int v9 (signed short, unsigned short, signed int);
signed int (*v10) (signed short, unsigned short, signed int) = v9;
extern void v11 (unsigned int, signed char, signed char, signed int);
extern void (*v12) (unsigned int, signed char, signed char, signed int);
extern signed short v13 (unsigned short, signed int, unsigned char, signed int);
extern signed short (*v14) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed char, signed char, unsigned short, signed int);
extern unsigned int (*v18) (signed char, signed char, unsigned short, signed int);
extern void v19 (signed int, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, signed short, signed char);
extern unsigned char (*v24) (unsigned int, signed short, signed char);
extern unsigned char v25 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, signed short, unsigned short);
extern signed int v27 (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = 2;
unsigned char v99 = 5;
signed short v98 = 2;

signed int v9 (signed short v101, unsigned short v102, signed int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 2;
unsigned char v105 = 1;
signed int v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v109 = 2;
signed char v108 = 1;
unsigned char v107 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v110, unsigned int v111, unsigned char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 7;
signed short v114 = -2;
signed short v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
