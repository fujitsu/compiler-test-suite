#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned int v9 (signed int, signed short, signed char);
unsigned int (*v10) (signed int, signed short, signed char) = v9;
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
void v23 (void);
void (*v24) (void) = v23;
extern signed int v25 (signed int, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, unsigned int);
extern void v27 (unsigned short, signed int, unsigned char);
extern void (*v28) (unsigned short, signed int, unsigned char);
extern signed char v29 (unsigned char, signed short, signed short, unsigned int);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v88 = -4;
unsigned int v87 = 2U;
signed short v86 = 1;

void v23 (void)
{
{
for (;;) {
signed int v91 = -4;
unsigned short v90 = 0;
signed int v89 = -4;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

unsigned int v9 (signed int v92, signed short v93, signed char v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -1;
signed char v96 = -4;
unsigned char v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
