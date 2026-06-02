#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed char v5 (signed short, unsigned short);
extern signed char (*v6) (signed short, unsigned short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (unsigned char, unsigned char);
extern signed char (*v12) (unsigned char, unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed int v21 (void);
signed int (*v22) (void) = v21;
void v23 (signed short, unsigned char, unsigned int, unsigned char);
void (*v24) (signed short, unsigned char, unsigned int, unsigned char) = v23;
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned int v27 (signed short, signed short, unsigned int);
extern unsigned int (*v28) (signed short, signed short, unsigned int);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 4U;
signed short v61 = -3;
signed char v60 = 0;

void v23 (signed short v63, unsigned char v64, unsigned int v65, unsigned char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 2U;
signed int v68 = 2;
signed int v67 = -1;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed char v72 = -1;
signed char v71 = -4;
unsigned int v70 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
