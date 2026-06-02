#include <stdlib.h>
extern signed char v1 (signed int, signed int, signed char);
extern signed char (*v2) (signed int, signed int, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed int, signed char, unsigned char);
extern unsigned char (*v8) (signed int, signed char, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned int v13 (signed short);
unsigned int (*v14) (signed short) = v13;
unsigned int v15 (signed short);
unsigned int (*v16) (signed short) = v15;
extern signed short v17 (signed char, signed int, unsigned char);
extern signed short (*v18) (signed char, signed int, unsigned char);
extern unsigned short v19 (unsigned int, signed char, signed char, signed int);
extern unsigned short (*v20) (unsigned int, signed char, signed char, signed int);
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
extern unsigned int v23 (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned char, unsigned char, unsigned int);
extern void v25 (unsigned short, signed char);
extern void (*v26) (unsigned short, signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 4;
signed short v100 = -2;
unsigned char v99 = 2;

unsigned int v15 (signed short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 2;
signed short v104 = -3;
signed char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -1;
signed short v108 = 2;
signed short v107 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v110;
unsigned char v111;
unsigned char v112;
unsigned int v113;
unsigned int v114;
v110 = 1 - 7;
v111 = 4 - 0;
v112 = 6 - 5;
v113 = 5U + 3U;
v114 = v23 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}
