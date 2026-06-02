#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed char, signed short, unsigned char, signed char);
extern signed short (*v6) (signed char, signed short, unsigned char, signed char);
extern unsigned short v7 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned int, unsigned char);
unsigned int v9 (signed short, unsigned int, unsigned char, unsigned char);
unsigned int (*v10) (signed short, unsigned int, unsigned char, unsigned char) = v9;
extern signed int v11 (unsigned int, signed int);
extern signed int (*v12) (unsigned int, signed int);
unsigned short v13 (unsigned int, unsigned short, signed short, unsigned short);
unsigned short (*v14) (unsigned int, unsigned short, signed short, unsigned short) = v13;
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v25 (signed char, unsigned int, unsigned int, unsigned short);
extern signed int (*v26) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned int v29 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v108 = 0;
signed int v107 = 2;
signed char v106 = 3;

unsigned short v13 (unsigned int v109, unsigned short v110, signed short v111, unsigned short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 3;
unsigned short v114 = 2;
signed int v113 = 3;
trace++;
switch (trace)
{
case 8: 
return v112;
case 10: 
{
unsigned short v116;
v116 = v27 ();
history[history_index++] = (int)v116;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v117, unsigned int v118, unsigned char v119, unsigned char v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 5;
signed int v122 = -3;
signed int v121 = 0;
trace++;
switch (trace)
{
case 2: 
return v118;
default: abort ();
}
}
}
}
