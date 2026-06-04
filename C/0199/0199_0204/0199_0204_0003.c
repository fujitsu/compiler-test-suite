#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short, signed int, signed short, unsigned short);
extern signed int (*v4) (signed short, signed int, signed short, unsigned short);
extern signed int v5 (signed int, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short);
extern unsigned char v7 (signed int, signed char, signed short, unsigned char);
extern unsigned char (*v8) (signed int, signed char, signed short, unsigned char);
extern unsigned int v9 (signed short, signed int, unsigned int);
extern unsigned int (*v10) (signed short, signed int, unsigned int);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
unsigned short v13 (signed short, unsigned int, unsigned int, signed short);
unsigned short (*v14) (signed short, unsigned int, unsigned int, signed short) = v13;
unsigned char v15 (unsigned char);
unsigned char (*v16) (unsigned char) = v15;
extern signed int v17 (signed short, unsigned short, unsigned int, unsigned short);
extern signed int (*v18) (signed short, unsigned short, unsigned int, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned char v23 (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char);
extern unsigned short (*v26) (unsigned short, unsigned char);
extern unsigned char v27 (unsigned int, signed int);
extern unsigned char (*v28) (unsigned int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 1;
unsigned short v102 = 4;
signed char v101 = 0;

unsigned int v21 (void)
{
{
for (;;) {
signed short v106 = 2;
signed int v105 = 0;
signed char v104 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -1;
unsigned char v109 = 3;
signed char v108 = -2;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v111, unsigned int v112, unsigned int v113, signed short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -3;
unsigned int v116 = 5U;
signed int v115 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed short v120 = 0;
unsigned char v119 = 0;
unsigned char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
