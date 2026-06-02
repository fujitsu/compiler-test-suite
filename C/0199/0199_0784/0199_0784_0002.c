#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed short, signed char, unsigned short);
extern signed short (*v6) (signed short, signed char, unsigned short);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed short v13 (signed short, unsigned short, unsigned char);
extern signed short (*v14) (signed short, unsigned short, unsigned char);
extern unsigned short v15 (signed short, unsigned short, unsigned int);
extern unsigned short (*v16) (signed short, unsigned short, unsigned int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed char v21 (signed char, unsigned int);
signed char (*v22) (signed char, unsigned int) = v21;
extern signed char v23 (unsigned char, unsigned char);
extern signed char (*v24) (unsigned char, unsigned char);
extern signed int v25 (signed char, unsigned char, signed short, unsigned char);
extern signed int (*v26) (signed char, unsigned char, signed short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
void v29 (unsigned short, signed short);
void (*v30) (unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = 1;
unsigned int v73 = 0U;
signed int v72 = -4;

void v29 (unsigned short v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 4;
signed int v78 = -4;
unsigned int v77 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v80, unsigned int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -4;
signed char v83 = -3;
unsigned int v82 = 5U;
trace++;
switch (trace)
{
case 3: 
return 3;
case 5: 
return v80;
case 7: 
return v84;
case 9: 
return 0;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 3;
unsigned char v87 = 0;
unsigned int v86 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
