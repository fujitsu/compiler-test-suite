#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern signed char v9 (unsigned int, unsigned short, signed int);
extern signed char (*v10) (unsigned int, unsigned short, signed int);
extern unsigned int v11 (signed int, signed int, signed short, unsigned short);
extern unsigned int (*v12) (signed int, signed int, signed short, unsigned short);
unsigned char v13 (signed int, unsigned char, signed short);
unsigned char (*v14) (signed int, unsigned char, signed short) = v13;
extern signed short v17 (signed char, signed char, unsigned short);
extern signed short (*v18) (signed char, signed char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
unsigned int v23 (unsigned char, unsigned short);
unsigned int (*v24) (unsigned char, unsigned short) = v23;
extern void v25 (signed short, signed short, signed int, signed int);
extern void (*v26) (signed short, signed short, signed int, signed int);
extern unsigned char v27 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned int, unsigned short, unsigned int);
extern signed char v29 (unsigned char, unsigned char, unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 6;
signed int v96 = -3;
signed char v95 = -1;

unsigned int v23 (unsigned char v98, unsigned short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 7;
signed char v101 = 1;
unsigned int v100 = 3U;
trace++;
switch (trace)
{
case 3: 
return 1U;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v103, unsigned char v104, signed short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 6;
unsigned char v107 = 3;
signed int v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned char v111 = 5;
signed char v110 = 2;
signed short v109 = 2;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v112;
v112 = v21 ();
history[history_index++] = (int)v112;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
