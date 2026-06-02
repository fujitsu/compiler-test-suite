#include <stdlib.h>
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned int v7 (signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, unsigned int, unsigned char);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern unsigned short v11 (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v15 (signed short, unsigned char);
extern unsigned char (*v16) (signed short, unsigned char);
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
void v19 (void);
void (*v20) (void) = v19;
extern unsigned short v21 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned short, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed int v25 (signed short, signed char, unsigned char);
signed int (*v26) (signed short, signed char, unsigned char) = v25;
signed char v27 (unsigned int, unsigned char);
signed char (*v28) (unsigned int, unsigned char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v77 = -1;
signed char v76 = 3;
unsigned char v75 = 7;

signed char v27 (unsigned int v78, unsigned char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 3;
unsigned int v81 = 7U;
signed char v80 = 3;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

signed int v25 (signed short v83, signed char v84, unsigned char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 0;
signed char v87 = 0;
signed short v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned short v91 = 7;
unsigned int v90 = 4U;
signed char v89 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
