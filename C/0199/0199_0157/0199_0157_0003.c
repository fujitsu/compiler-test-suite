#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
signed int v11 (signed int, signed int);
signed int (*v12) (signed int, signed int) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned char, unsigned short, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, signed char);
extern void v17 (unsigned short, unsigned char, signed int, unsigned int);
extern void (*v18) (unsigned short, unsigned char, signed int, unsigned int);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
unsigned char v25 (unsigned short, signed short, signed char, signed short);
unsigned char (*v26) (unsigned short, signed short, signed char, signed short) = v25;
extern unsigned int v27 (signed char, signed char, unsigned int);
extern unsigned int (*v28) (signed char, signed char, unsigned int);
extern signed char v29 (signed short, unsigned int, unsigned char, unsigned char);
extern signed char (*v30) (signed short, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 7U;
signed int v101 = 2;
signed char v100 = 3;

unsigned char v25 (unsigned short v103, signed short v104, signed char v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 5;
unsigned short v108 = 0;
signed int v107 = 0;
trace++;
switch (trace)
{
case 7: 
return 5;
case 9: 
return 7;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned int v112 = 2U;
signed char v111 = -3;
unsigned int v110 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v113, signed int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 4;
unsigned short v116 = 6;
unsigned char v115 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
