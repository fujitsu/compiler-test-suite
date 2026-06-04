#include <stdlib.h>
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned int, unsigned short, signed short, signed char);
extern signed char (*v6) (unsigned int, unsigned short, signed short, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned short v9 (unsigned char, unsigned char, unsigned char, signed short);
unsigned short (*v10) (unsigned char, unsigned char, unsigned char, signed short) = v9;
extern signed char v11 (signed char, unsigned char, unsigned char);
extern signed char (*v12) (signed char, unsigned char, unsigned char);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
unsigned int v17 (signed short, unsigned short, unsigned int, unsigned short);
unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned short) = v17;
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
extern void v23 (void);
extern void (*v24) (void);
extern signed short v25 (unsigned short, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, signed char);
extern signed short v27 (signed short, signed short, unsigned short);
extern signed short (*v28) (signed short, signed short, unsigned short);
extern signed char v29 (signed int, signed int, unsigned int, unsigned int);
extern signed char (*v30) (signed int, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v104 = 6;
signed int v103 = 0;
unsigned short v102 = 0;

unsigned int v17 (signed short v105, unsigned short v106, unsigned int v107, unsigned short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 5;
signed char v110 = -3;
signed short v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned int v114 = 4U;
unsigned char v113 = 0;
unsigned short v112 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v115, unsigned char v116, unsigned char v117, signed short v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -3;
signed char v120 = 2;
unsigned short v119 = 0;
trace++;
switch (trace)
{
case 5: 
return v119;
case 7: 
return 1;
case 9: 
return 3;
case 11: 
return 6;
default: abort ();
}
}
}
}
