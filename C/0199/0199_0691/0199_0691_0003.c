#include <stdlib.h>
extern unsigned short v3 (signed char, signed int, unsigned int, signed short);
extern unsigned short (*v4) (signed char, signed int, unsigned int, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (unsigned int, signed short, unsigned char);
extern unsigned char (*v14) (unsigned int, signed short, unsigned char);
extern signed short v17 (unsigned short, unsigned char, signed char, signed short);
extern signed short (*v18) (unsigned short, unsigned char, signed char, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned short v21 (signed short);
unsigned short (*v22) (signed short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern void v27 (signed short, unsigned int, unsigned short, unsigned short);
extern void (*v28) (signed short, unsigned int, unsigned short, unsigned short);
signed char v29 (unsigned char, unsigned short, unsigned int);
signed char (*v30) (unsigned char, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 4;
signed int v99 = 0;
unsigned char v98 = 4;

signed char v29 (unsigned char v101, unsigned short v102, unsigned int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 0;
unsigned int v105 = 5U;
unsigned char v104 = 3;
trace++;
switch (trace)
{
case 10: 
return -2;
default: abort ();
}
}
}
}

signed short v25 (void)
{
{
for (;;) {
signed char v109 = 2;
signed char v108 = -3;
unsigned int v107 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -3;
signed short v112 = -1;
unsigned short v111 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
