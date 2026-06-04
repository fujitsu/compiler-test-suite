#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned int v7 (signed short, unsigned char);
extern unsigned int (*v8) (signed short, unsigned char);
extern void v9 (signed short, unsigned int);
extern void (*v10) (signed short, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern void v21 (unsigned int, unsigned char);
extern void (*v22) (unsigned int, unsigned char);
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
void v29 (unsigned char);
void (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v82 = 3;
unsigned char v81 = 5;
signed int v80 = -4;

void v29 (unsigned char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -3;
signed char v85 = -2;
signed short v84 = -4;
trace++;
switch (trace)
{
case 1: 
return;
case 3: 
return;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed char v89 = -3;
unsigned int v88 = 3U;
unsigned short v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 2;
unsigned char v92 = 5;
unsigned short v91 = 1;
trace++;
switch (trace)
{
case 7: 
return -1;
case 9: 
return v93;
case 11: 
return 3;
default: abort ();
}
}
}
}
