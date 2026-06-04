#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned char);
extern void (*v2) (unsigned char, signed short, unsigned char);
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
signed short v13 (void);
signed short (*v14) (void) = v13;
signed int v15 (unsigned int);
signed int (*v16) (unsigned int) = v15;
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
void v27 (unsigned char, signed char);
void (*v28) (unsigned char, signed char) = v27;
extern void v29 (unsigned short, signed int);
extern void (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v70 = 2;
unsigned char v69 = 5;
signed int v68 = -2;

void v27 (unsigned char v71, signed char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 4;
unsigned char v74 = 6;
signed char v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = 3;
unsigned char v78 = 4;
unsigned short v77 = 2;
trace++;
switch (trace)
{
case 10: 
return 0;
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned char v82 = 6;
unsigned int v81 = 1U;
signed short v80 = -4;
trace++;
switch (trace)
{
case 5: 
return 2;
default: abort ();
}
}
}
}
