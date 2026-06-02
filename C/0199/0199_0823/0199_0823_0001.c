#include <stdlib.h>
extern signed char v1 (signed int, signed char, unsigned short);
extern signed char (*v2) (signed int, signed char, unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, unsigned short);
extern signed short (*v6) (signed short, unsigned char, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned int v9 (signed char, unsigned short, unsigned char);
unsigned int (*v10) (signed char, unsigned short, unsigned char) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (unsigned char, signed char, signed char);
extern signed short (*v14) (unsigned char, signed char, signed char);
signed int v15 (void);
signed int (*v16) (void) = v15;
void v17 (unsigned short);
void (*v18) (unsigned short) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v24) (signed int, signed int, unsigned int, unsigned char);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v58 = 0U;
unsigned int v57 = 5U;
signed short v56 = 0;

void v17 (unsigned short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 5U;
unsigned int v61 = 2U;
signed char v60 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned short v65 = 3;
unsigned char v64 = 3;
signed short v63 = 3;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

unsigned int v9 (signed char v66, unsigned short v67, unsigned char v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 2U;
signed char v70 = 2;
unsigned char v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
