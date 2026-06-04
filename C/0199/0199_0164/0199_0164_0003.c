#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char);
extern signed short (*v2) (unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed char v13 (signed char, unsigned int);
signed char (*v14) (signed char, unsigned int) = v13;
extern unsigned char v15 (unsigned short, signed char, signed short);
extern unsigned char (*v16) (unsigned short, signed char, signed short);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned int v19 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern void v23 (unsigned char, signed short, signed int, signed short);
extern void (*v24) (unsigned char, signed short, signed int, signed short);
extern void v25 (unsigned char, signed char);
extern void (*v26) (unsigned char, signed char);
signed int v27 (unsigned int, unsigned char, signed int, unsigned int);
signed int (*v28) (unsigned int, unsigned char, signed int, unsigned int) = v27;
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v100 = 3;
unsigned short v99 = 6;
unsigned int v98 = 6U;

signed int v27 (unsigned int v101, unsigned char v102, signed int v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 4U;
unsigned char v106 = 5;
signed char v105 = -2;
trace++;
switch (trace)
{
case 5: 
return -4;
case 8: 
return -4;
default: abort ();
}
}
}
}

signed char v13 (signed char v108, unsigned int v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 7U;
signed char v111 = -2;
unsigned int v110 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed short v115 = -4;
signed int v114 = 0;
signed char v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
