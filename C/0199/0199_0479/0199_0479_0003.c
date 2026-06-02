#include <stdlib.h>
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (signed short, unsigned int, unsigned char);
extern void (*v6) (signed short, unsigned int, unsigned char);
extern unsigned short v7 (unsigned int, signed char);
extern unsigned short (*v8) (unsigned int, signed char);
unsigned short v9 (unsigned int);
unsigned short (*v10) (unsigned int) = v9;
extern signed short v11 (unsigned int, signed short, unsigned int, unsigned int);
extern signed short (*v12) (unsigned int, signed short, unsigned int, unsigned int);
extern unsigned int v13 (signed char, signed int, signed int);
extern unsigned int (*v14) (signed char, signed int, signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed int v19 (signed short, signed int, signed int, signed char);
extern signed int (*v20) (signed short, signed int, signed int, signed char);
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = -3;
signed short v103 = -2;
signed int v102 = -2;

unsigned int v23 (void)
{
{
for (;;) {
signed short v107 = -2;
signed char v106 = -1;
unsigned char v105 = 3;
trace++;
switch (trace)
{
case 9: 
return 5U;
case 11: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = -4;
unsigned short v110 = 3;
signed short v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed int v114 = 0;
signed short v113 = -3;
unsigned int v112 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
