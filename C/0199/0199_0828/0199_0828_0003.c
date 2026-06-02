#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned short v7 (signed int, signed int, unsigned int, signed int);
extern unsigned short (*v8) (signed int, signed int, unsigned int, signed int);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned int v13 (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int, signed char, unsigned int);
signed int v19 (signed int, signed int);
signed int (*v20) (signed int, signed int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed int v25 (unsigned char, unsigned char, unsigned int, signed char);
extern signed int (*v26) (unsigned char, unsigned char, unsigned int, signed char);
extern signed char v27 (unsigned int, signed short);
extern signed char (*v28) (unsigned int, signed short);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 3;
signed char v97 = -3;
signed int v96 = -2;

signed int v19 (signed int v99, signed int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 2;
unsigned char v102 = 7;
signed char v101 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed int v106 = 2;
signed char v105 = -3;
signed short v104 = 2;
trace++;
switch (trace)
{
case 5: 
return v104;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v109 = 0;
unsigned short v108 = 2;
signed char v107 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
