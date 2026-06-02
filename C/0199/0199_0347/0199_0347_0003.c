#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned int, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (signed short, signed int);
extern unsigned int (*v12) (signed short, signed int);
extern void v13 (signed char, unsigned short);
extern void (*v14) (signed char, unsigned short);
extern signed char v15 (signed short, signed int, signed char, signed char);
extern signed char (*v16) (signed short, signed int, signed char, signed char);
extern signed short v17 (signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned int, unsigned char);
signed char v19 (void);
signed char (*v20) (void) = v19;
signed short v21 (signed char, signed short, unsigned char);
signed short (*v22) (signed char, signed short, unsigned char) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned char, signed char);
extern unsigned short (*v26) (signed int, unsigned char, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v111 = -1;
signed int v110 = 1;
unsigned short v109 = 7;

signed short v21 (signed char v112, signed short v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 1U;
unsigned char v116 = 7;
signed char v115 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
signed short v120 = 1;
signed char v119 = -2;
signed int v118 = -4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v121;
v121 = v27 ();
history[history_index++] = (int)v121;
}
break;
case 11: 
return 2;
case 16: 
return v119;
default: abort ();
}
}
}
}
